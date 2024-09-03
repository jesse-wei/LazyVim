-- Can just use <leader>ud to disable diagnostics
if true then
  return {}
end
return {
  "dgagn/diagflow.nvim",
  opts = { placement = "inline", inline_padding_left = 3 },
}
