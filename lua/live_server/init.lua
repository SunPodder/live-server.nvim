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

function M.cmd(opts)
	local cmd = opts.args
	if cmd == 'start' then
		StartServer()
	elseif cmd == 'stop' then
		StopServer()
	else
		print('Invalid command')
	end
end

function StartServer()
	print('Starting server...')
end

function StopServer()
	print('Stopping server...')
end

return M
