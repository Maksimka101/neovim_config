require("formatter").setup {
  filetype = {
    dart = {
      function()
        local cwd = vim.fn.getcwd()
        local lineLength = 120

        if string.find(cwd, "qyre-flutter") then
          lineLength = 100
        end

        return {
          exe = "dart",
          args = {
            "format",
            "--fix",
            "-l " .. lineLength
          },
          stdin = true
        }
      end
    },
    lua = {
      -- luafmt
      function()
        print("Format lua")
        return {
          exe = "luafmt",
          args = {"--indent-count", 2, "--stdin"},
          stdin = true
        }
      end
    }
  }
}
