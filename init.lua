luahub = {}
local _path = ({...})[1]:gsub("%.init", "")
local _modules = {
  'apiget', 'commits', 'blob', 'tree', 'repos', 'gist', 'issues', 'user'
}

for _,module in ipairs(_modules) do
  require(_path .. '.' .. module)
end
