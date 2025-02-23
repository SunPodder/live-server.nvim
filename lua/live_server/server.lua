local Config = require("live_server.config")
local M = {}

function M.start()
	print("Server started on http://" .. Config.get("host") .. ":" .. Config.get("port"))
end

function M.stop()
	print('Server stopped')
end

return M

