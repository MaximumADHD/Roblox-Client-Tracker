-- --!nocheck
-- #!/usr/bin/env lua

-- qrencode = dofile("qrencode.lua")


-- -- padding: number of padding rows/columns around QR code
-- local function matrix_to_string( tab, padding,padding_char,white_pixel,black_pixel )
--     local padding_string
--     local str_tab = {} -- hold each row of the qr code in a cell

--     -- Add (padding) blank columns at the left of the matrix
--     -- (left of each row string), inserting an extra (padding)
--     -- rows at the top and bottom
--     padding_string = string.rep(padding_char,padding)
--     for i=1,#tab + 2*padding do
--         str_tab[i] = padding_string
--     end

--     for x=1,#tab do
--         for y=1,#tab do
--             if tab[x][y] > 0 then
--                 -- using y + padding because we added (padding) blank columns at the left for each string in str_tab array
--                 str_tab[y + padding] = str_tab[y + padding] .. black_pixel
--             elseif tab[x][y] < 0 then
--                 str_tab[y + padding] = str_tab[y + padding] .. white_pixel
--             else
--                 str_tab[y + padding] = str_tab[y + padding] .. " X"
--             end
--         end
--     end

--     padding_string = string.rep(padding_char,#tab)
--     for i=1,padding do
--         -- fills in padding rows at top of matrix
--         str_tab[i] =  str_tab[i] .. padding_string
--         -- fills in padding rows at bottom of matrix
--         str_tab[#tab + padding + i] =  str_tab[#tab + padding + i] .. padding_string
--     end

--   -- Add (padding) blank columns to right of matrix (to the end of each row string)
--     padding_string = string.rep(padding_char,padding)
--     for i=1,#tab + 2*padding do
--         str_tab[i] = str_tab[i] .. padding_string
--     end

--     return str_tab
-- end


-- local use_ansi = false
-- local padding = 1
-- local padding_char
-- local black_pixel = "X"
-- local white_pixel = " "
-- local codeword

-- while true do
--     if arg[1] == nil then
--         break
--     elseif arg[1] == "-h" or arg[1] == "--help" then
--         codeword = nil
--         break
--     elseif arg[1] == "-a" then
--         use_ansi = true
--     elseif arg[1] == "-p" then
--         padding = arg[2]
--         table.remove(arg,2)
--     elseif arg[1] == "-c" then
--         padding_char = arg[2]
--         table.remove(arg,2)
--     elseif arg[1] == "-b" then
--         black_pixel = arg[2]
--         table.remove(arg,2)
--     elseif arg[1] == "-w" then
--         white_pixel = arg[2]
--         table.remove(arg,2)
--     else
--         codeword = arg[1]
--     end
--     table.remove(arg,1)
-- end

-- if use_ansi then
--     black_pixel = "\27[40m  \27[0m"
--     white_pixel = "\27[1;47m  \27[0m"
-- end

-- padding_char = padding_char or white_pixel

-- if codeword then
--     local ok, tab_or_message = qrencode.qrcode(codeword)
--     if not ok then
--         print(tab_or_message)
--     else
--         local rows
--         rows = matrix_to_string(tab_or_message,padding,padding_char,white_pixel,black_pixel)
--         for i=1,#rows do  -- prints each "row" of the QR code on a line, one at a time
--             print(rows[i])
--         end
--     end
-- else
--     print("Usage:")
--     print(arg[0] .. " [-a] [-p <num>] [-c <char>] [-b <char>] [-w <char>]  <contents>")
--     print("-a       : use ansi colors (don't do this on a dos box)")
--     print("-p <num> : use padding of width <num> (default: 1)")
--     print("-b <char>: use <char> for black pixel (default: 'X')")
--     print("-w <char>: use <char> for white pixel (default: ' ')")
--     print("-c <char>: use <char> for padding (default: the white pixel)")
-- end

return {}
