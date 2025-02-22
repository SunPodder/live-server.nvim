local server = require("server")
local M = {}

function M.setup()
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
		server.start()
	elseif cmd == 'stop' then
		server.stop()
	else
		print('Invalid command')
	end
end

return M

