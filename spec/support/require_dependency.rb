def require_dependency(fpath)
  file = File.join(PROJECT_ROOT, 'app', fpath)

  require file
end
