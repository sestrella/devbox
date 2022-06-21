-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/sestrella/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sestrella/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sestrella/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sestrella/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sestrella/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["dark-notify"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\brun\16dark_notify\frequire\0" },
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/dark-notify",
    url = "https://github.com/cormacrelf/dark-notify"
  },
  ["haskell-vim"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/haskell-vim",
    url = "https://github.com/neovimhaskell/haskell-vim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimí\1\1\0\b\0\17\0\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0055\a\n\0B\5\2\2=\5\f\4=\4\b\0039\4\r\0009\4\14\0044\6\3\0005\a\15\0>\a\1\0065\a\16\0>\a\2\6B\4\2\2=\4\14\3B\1\2\1K\0\1\0\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\n<Tab>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n<\0\2\b\0\4\0\t6\2\0\0009\2\1\0029\2\2\2'\4\3\0\18\5\0\0\18\6\1\0004\a\0\0B\2\5\1K\0\1\0\6n\bset\vkeymap\bvimg\0\2\n\1\5\0\v5\2\0\0006\3\1\0009\3\2\0039\3\3\3-\5\0\0'\6\4\0\18\a\0\0\18\b\1\0\18\t\2\0B\3\6\1K\0\1\0\1À\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2”\2\1\2\a\0\t\0\0193\2\0\0\18\3\2\0'\5\1\0'\6\2\0B\3\3\1\18\3\2\0'\5\3\0'\6\4\0B\3\3\1\18\3\2\0'\5\5\0'\6\6\0B\3\3\1\18\3\2\0'\5\a\0'\6\b\0B\3\3\0012\0\0€K\0\1\0/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<space>td&<cmd>lua vim.lsp.buf.rename()<CR>\r<space>r*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca\0­\b\1\0\15\0<\0d6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0003\1\a\0\18\2\1\0'\4\b\0006\5\0\0009\5\t\0059\5\n\5B\2\3\1\18\2\1\0'\4\v\0006\5\0\0009\5\t\0059\5\f\5B\2\3\1\18\2\1\0'\4\r\0006\5\0\0009\5\t\0059\5\14\5B\2\3\0016\2\4\0'\4\15\0B\2\2\0023\3\16\0006\4\0\0009\4\17\0046\6\18\0009\6\19\6'\a\20\0B\4\3\0026\5\21\0009\5\22\5\18\a\4\0'\b\23\0B\5\3\0016\5\21\0009\5\22\5\18\a\4\0'\b\24\0B\5\3\0015\5\25\0004\6\0\0=\6\26\0055\6*\0005\a\28\0005\b\27\0=\4\19\b=\b\29\a5\b\31\0005\t\30\0=\t \b=\b!\a5\b%\0006\t\0\0009\t\"\t9\t#\t'\v$\0+\f\2\0B\t\3\2=\t&\b=\b'\a5\b(\0=\b)\a=\a+\6=\6,\0054\6\0\0=\6-\0055\0061\0005\a/\0005\b.\0=\b0\a=\a2\6=\0063\0056\0064\0\18\b\5\0B\6\2\4H\t\t€8\v\t\0029\v5\v5\r6\0=\0007\r5\0148\0=\0149\r=\3:\r=\n;\rB\v\2\1F\t\3\3R\tõK\0\1\0\rsettings\14on_attach\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\1\0\0\nsetup\npairs\vyamlls\tyaml\1\0\0\fschemas\1\0\0\1\0\0026https://json.schemastore.org/github-workflow.json\29/.github/workflows/*.yml5https://json.schemastore.org/circleciconfig.json\26/.circleci/config.yml\16terraformls\16sumneko_lua\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\18rust_analyzer\1\0\0\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\0\14lspconfig\15setloclist\19<space><space>\14goto_prev\r<space>k\14goto_next\15diagnostic\r<space>j\0\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-solarized-lua"] = {
    config = { "\27LJ\2\n_\0\0\3\0\5\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0\26colorscheme solarized\bcmd\24solarized_termtrans\6g\bvim\0" },
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/nvim-solarized-lua",
    url = "https://github.com/ishan9299/nvim-solarized-lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-fish-syntax"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/vim-fish-syntax",
    url = "https://github.com/khaveesh/vim-fish-syntax"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-svelte"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/vim-svelte",
    url = "https://github.com/evanleck/vim-svelte"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/sestrella/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimí\1\1\0\b\0\17\0\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0055\a\n\0B\5\2\2=\5\f\4=\4\b\0039\4\r\0009\4\14\0044\6\3\0005\a\15\0>\a\1\0065\a\16\0>\a\2\6B\4\2\2=\4\14\3B\1\2\1K\0\1\0\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\n<Tab>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: dark-notify
time([[Config for dark-notify]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\brun\16dark_notify\frequire\0", "config", "dark-notify")
time([[Config for dark-notify]], false)
-- Config for: nvim-solarized-lua
time([[Config for nvim-solarized-lua]], true)
try_loadstring("\27LJ\2\n_\0\0\3\0\5\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0\26colorscheme solarized\bcmd\24solarized_termtrans\6g\bvim\0", "config", "nvim-solarized-lua")
time([[Config for nvim-solarized-lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n<\0\2\b\0\4\0\t6\2\0\0009\2\1\0029\2\2\2'\4\3\0\18\5\0\0\18\6\1\0004\a\0\0B\2\5\1K\0\1\0\6n\bset\vkeymap\bvimg\0\2\n\1\5\0\v5\2\0\0006\3\1\0009\3\2\0039\3\3\3-\5\0\0'\6\4\0\18\a\0\0\18\b\1\0\18\t\2\0B\3\6\1K\0\1\0\1À\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2”\2\1\2\a\0\t\0\0193\2\0\0\18\3\2\0'\5\1\0'\6\2\0B\3\3\1\18\3\2\0'\5\3\0'\6\4\0B\3\3\1\18\3\2\0'\5\5\0'\6\6\0B\3\3\1\18\3\2\0'\5\a\0'\6\b\0B\3\3\0012\0\0€K\0\1\0/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<space>td&<cmd>lua vim.lsp.buf.rename()<CR>\r<space>r*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca\0­\b\1\0\15\0<\0d6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0003\1\a\0\18\2\1\0'\4\b\0006\5\0\0009\5\t\0059\5\n\5B\2\3\1\18\2\1\0'\4\v\0006\5\0\0009\5\t\0059\5\f\5B\2\3\1\18\2\1\0'\4\r\0006\5\0\0009\5\t\0059\5\14\5B\2\3\0016\2\4\0'\4\15\0B\2\2\0023\3\16\0006\4\0\0009\4\17\0046\6\18\0009\6\19\6'\a\20\0B\4\3\0026\5\21\0009\5\22\5\18\a\4\0'\b\23\0B\5\3\0016\5\21\0009\5\22\5\18\a\4\0'\b\24\0B\5\3\0015\5\25\0004\6\0\0=\6\26\0055\6*\0005\a\28\0005\b\27\0=\4\19\b=\b\29\a5\b\31\0005\t\30\0=\t \b=\b!\a5\b%\0006\t\0\0009\t\"\t9\t#\t'\v$\0+\f\2\0B\t\3\2=\t&\b=\b'\a5\b(\0=\b)\a=\a+\6=\6,\0054\6\0\0=\6-\0055\0061\0005\a/\0005\b.\0=\b0\a=\a2\6=\0063\0056\0064\0\18\b\5\0B\6\2\4H\t\t€8\v\t\0029\v5\v5\r6\0=\0007\r5\0148\0=\0149\r=\3:\r=\n;\rB\v\2\1F\t\3\3R\tõK\0\1\0\rsettings\14on_attach\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\1\0\0\nsetup\npairs\vyamlls\tyaml\1\0\0\fschemas\1\0\0\1\0\0026https://json.schemastore.org/github-workflow.json\29/.github/workflows/*.yml5https://json.schemastore.org/circleciconfig.json\26/.circleci/config.yml\16terraformls\16sumneko_lua\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\18rust_analyzer\1\0\0\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\0\14lspconfig\15setloclist\19<space><space>\14goto_prev\r<space>k\14goto_next\15diagnostic\r<space>j\0\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
