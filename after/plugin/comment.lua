require('Comment').setup({
  -- 你可以在这里添加配置选项
  toggler = {
    line = 'gcc', -- 切换注释行的快捷键
    block = 'gbc', -- 切换注释块的快捷键
  },
  opleader = {
    line = 'gc', -- 视觉模式下切换注释行的快捷键
    block = 'gb', -- 视觉模式下切换注释块的快捷键
  },
  extra = {
    above = 'gcO', -- 在上面添加注释的快捷键
    below = 'gco', -- 在下面添加注释的快捷键
    eol = 'gcA', -- 在行尾添加注释的快捷键
  },
  mappings = {
    basic = true, -- 启用基本的快捷键
    extra = true, -- 启用额外的快捷键
  },
})

