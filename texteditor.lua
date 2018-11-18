local mod = {}

local document = {}

document.lines = []
document.text = ""
document.pos = 0

document.length = function ()
  return #document.text
end

document.insert = function (text, pos)
  for i=1, #document.lines do
    if pos < document.lines[i] then
      break
    end
    pos = pos - document.lines[i]
  end

  local lineToEdit = document.lines[i]
  print(lineToEdit)
  document.lines[i] = lineToEdit:sub(1, pos) ..
                      text ..
                      lineToEdit:sub(pos + 1, document.length()-1)
end

document.set_text = function(text)
  document.text = text
end

document.get_text = function ()
  return document.text
end

document.set_pos = function (pos)
  document.pos = pos
end

mod.get_document = function ()
  return document
end

return mod
