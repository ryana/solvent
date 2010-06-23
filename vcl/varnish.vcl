backend mpb {
  .host = "dev.mypunchbowl.com";
  .port = "3000";
}

sub vcl_recv { 
  set req.http.post = "dev.mypunchbowl.com";
  set req.backend = mpb;

  if (req.url ~ "^/gridfs/" || req.url ~ "^/stylesheets/" || req.url ~ "^/javascripts/") {
    if (req.request == "GET") {
      unset req.http.cookie;
      unset req.http.Authorization;
      lookup;
    } elsif (req.request == "PURGE") {
      lookup;
    }
  }

  pass;
}

# Note that setting ttl to 0 is magical.  the object is zapped from cache.
sub vcl_hit {
  if (req.request == "PURGE") {
    set obj.ttl = 0s;
    error 200 "Purged.";
  }
}

sub vcl_miss {
  if (req.request == "PURGE") {
    error 404 "Not in cache.";
  }
}
