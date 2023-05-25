require("sasa.remap")
require("sasa.set")

count = 1
vim.on_key(function(key) 
    count = count +1 
    if (count < 100 and vim.api.nvim_get_mode().mode == "n")
    then
	    print(key)
    end
end)

