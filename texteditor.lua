local mod = {}

local document = {}

document.text = ""
document.pos = 0

document.length = function ()
  return #document.text
end

document.insert = function (text, pos)
  document.text = document.text:sub(1, pos) .. text .. document.text:sub(pos + 1, document.length()-1)
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
