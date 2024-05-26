local lfs = require("lfs")
local previous_mod_times = {}

local function check_directory(dir)
    local modification_detected = false
    for name in lfs.dir(dir) do
        if name ~= '.' and name ~= '..' then
            local file_path = dir .. '/' .. name
            local attr = lfs.attributes(file_path)
            if attr.mode == "directory" then
                if check_directory(file_path) then
                    modification_detected = true
                end
            else
                local mod_time = attr.modification
                if previous_mod_times[file_path] and previous_mod_times[file_path] ~= mod_time then
                    modification_detected = true
                end
                previous_mod_times[file_path] = mod_time
            end
        end
    end
    return modification_detected
end

return check_directory