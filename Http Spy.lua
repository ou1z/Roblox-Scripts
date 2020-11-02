local g
g = hookfunction(game.HttpGet,function(self,url,...)
  print("HttpGet Request Sent To: "..url)
  return g(self,url,...)
end)

local ga
ga = hookfunction(game.HttpGetAsync,function(self,url,...)
  print("HttpGetAsync Request Sent To: "..url)
  return ga(self,url,...)
end)

local p
p = hookfunction(game.HttpPost,function(self,url,...)
  print("HttpPost Request Sent To: "..url)
  warn("Arguments: "..(...))
  return p(self,url,...)
end)

local pa
pa = hookfunction(game.HttpPostAsync,function(self,url,...)
  print("HttpPostAsync Request Sent To: "..url)
  warn("Arguments: "..(...))
  return pa(self,url,...)
end)

local pa
pa = hookfunction(syn.request,function(tbl,...)
  print(string.format("%s Request Sent To: %s", tbl.Method or "GET", tbl.Url))
  return pa(tbl,...)
end)

