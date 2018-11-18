local texteditor = require ('./texteditor')
print(texteditor.get_document().length())
texteditor.get_document().set_text('asdfasdfadsf')
print(texteditor.get_document().get_text())
texteditor.get_document().insert('farts', 0)
print(texteditor.get_document().get_text())

--function love.draw()
  --love.graphics.print('Hello World!', 400, 300)
--end
