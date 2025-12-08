return {
  {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    opts = {
      completion = {
        cmp = {
          enabled = true,
        },
      },
    },
    keys = {
      { '<leader>ct', function() require('crates').toggle() end, desc = '[C]rates [T]oggle' },
      { '<leader>cr', function() require('crates').reload() end, desc = '[C]rates [R]eload' },
      { '<leader>cv', function() require('crates').show_versions_popup() end, desc = '[C]rates [V]ersions popup' },
      { '<leader>cf', function() require('crates').show_features_popup() end, desc = '[C]rates [F]eatures popup' },
      { '<leader>cd', function() require('crates').show_dependencies_popup() end, desc = '[C]rates [D]ependencies popup' },
      { '<leader>cu', function() require('crates').update_crate() end, desc = '[C]rates [U]pdate crate' },
      { '<leader>ca', function() require('crates').update_all_crates() end, desc = '[C]rates update [A]ll' },
      { '<leader>cU', function() require('crates').upgrade_crate() end, desc = '[C]rates [U]pgrade crate' },
      { '<leader>cA', function() require('crates').upgrade_all_crates() end, desc = '[C]rates upgrade [A]ll' },
      { '<leader>cH', function() require('crates').open_homepage() end, desc = '[C]rates open [H]omepage' },
      { '<leader>cR', function() require('crates').open_repository() end, desc = '[C]rates open [R]epository' },
      { '<leader>cD', function() require('crates').open_documentation() end, desc = '[C]rates open [D]ocumentation' },
      { '<leader>cC', function() require('crates').open_crates_io() end, desc = '[C]rates open [C]rates.io' },
    },
  },
}
