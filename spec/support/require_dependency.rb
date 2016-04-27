def require_dependency(fpath)
  file = File.join('../../', 'app', fpath)

  require file
end
