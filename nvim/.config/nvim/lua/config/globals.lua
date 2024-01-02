P = function(v)
  print(vim.inspect(v))
  return v
end

RELOAD = function(...)
  local ok, plenary = pcall(require, "plenary.reload")
  if ok then
    return plenary.reload_module(...)
  end
end

R = function(name)
  RELOAD(name)
  return require(name)
end
