local Server = require("live_server.server")
local Config = require("live_server.config")
local M = {}

-- Setup the plugin
-- @param opts table
-- @return nil
function M.setup(opts)
	if opts ~= nil then
		Config.merge(opts)
	end

	-- Accept one subcommand
	-- command to start the server
	-- command to stop the server
	vim.api.nvim_create_user_command('LiveServer', M.cmd, {
		nargs = 1,
		complete = function(_, _, _)
			return { 'start', 'stop' }
		end
	})
end

-- Editor Command handler
-- @param opts table
-- @return nil
function M.cmd(opts)
	local cmd = opts.args
	if cmd == 'start' then
		Server.start()
	elseif cmd == 'stop' then
		Server.stop()
	else
		print('Invalid command')
	end
end

return M

