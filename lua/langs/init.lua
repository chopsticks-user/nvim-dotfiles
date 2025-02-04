local lua = require("langs.lua")
local cpp = require("langs.cpp")

return {
  -- @param args table
  lspSetup = function(params)
    lua.lspSetup(params)
    cpp.lspSetup(params)
  end,
  lfSetup = function(lfb)
    local luaLf = lua.lfSetup(lfb)
    local cppLf = cpp.lfSetup(lfb)

    local lfSources = {
      lfb.completion.spell, -- for English spelling
      lfb.diagnostics.commitlint,
    }

    local seen = {}

    for _, arr in ipairs({ luaLf, cppLf }) do
      for _, src in ipairs(arr) do
        if not seen[src] then
          table.insert(lfSources, src)
          seen[src] = true
        end
      end
    end

    return lfSources
  end,
}
