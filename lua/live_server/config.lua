local M = {}

local defaults = {
	-- The port to run the server on
	port = 8080,
	-- The host to run the server on
	host = "127.0.0.1"
}

-- Merge the user configuration with the defaults
-- @param user_config table
-- @return nil
function M.merge(user_config)
	defaults = vim.tbl_deep_extend("force", defaults, user_config)
end


-- Get a configuration value
-- @param key string
-- @return any
function M.get(key)
	return defaults[key]
end

-- Set a configuration value
-- @param key string
-- @param value any
-- @return nil
function M.set(key, value)
	defaults[key] = value
end

return M

