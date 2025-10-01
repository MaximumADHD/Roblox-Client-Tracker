PROTO_0:
  LOADK R4 K0 ["^%s*(.-)%s*$"]
  NAMECALL R2 R0 K1 ["match"]
  CALL R2 2 1
  OR R1 R2 R0
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 0
  LOADK R4 K0 ["([^
]*)?
?"]
  NAMECALL R2 R0 K1 ["gmatch"]
  CALL R2 2 3
  FORGPREP R2
  FASTCALL2 TABLE_INSERT R1 R5 [+5]
  MOVE R8 R1
  MOVE R9 R5
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 1 [-8]
  RETURN R1 1

PROTO_2:
  MOVE R2 R0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEN R10 R7 1
  GETTABLEN R11 R7 2
  NAMECALL R8 R2 K0 ["gsub"]
  CALL R8 3 1
  MOVE R2 R8
  FORGLOOP R3 2 [-7]
  RETURN R2 1

PROTO_3:
  LOADK R3 K0 ["%(%?:"]
  LOADK R4 K1 ["("]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 1
  LOADK R4 K3 ["\(%d+)"]
  LOADK R5 K4 ["%%%1"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_4:
  NEWTABLE R1 0 0
  LOADK R4 K0 ["{%d"]
  NAMECALL R2 R0 K1 ["find"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  FASTCALL2K TABLE_INSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Quantifiers {n}, {n,}, {n,m} are not supported due to Lua pattern limitations"]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  LOADK R4 K6 ["%(%?[=!<]"]
  NAMECALL R2 R0 K1 ["find"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  FASTCALL2K TABLE_INSERT R1 K7 [+5]
  MOVE R3 R1
  LOADK R4 K7 ["Lookahead/lookbehind assertions (?=), (?!), (?<=), (?<!) are not supported due to Lua pattern limitations"]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  LOADK R4 K8 ["\b"]
  NAMECALL R2 R0 K1 ["find"]
  CALL R2 2 1
  JUMPIF R2 [+5]
  LOADK R4 K9 ["\B"]
  NAMECALL R2 R0 K1 ["find"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  FASTCALL2K TABLE_INSERT R1 K10 [+5]
  MOVE R3 R1
  LOADK R4 K10 ["Word boundaries \b and \B are not supported due to Lua pattern limitations"]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  LOADK R4 K11 ["\[nrtfv]"]
  NAMECALL R2 R0 K1 ["find"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  FASTCALL2K TABLE_INSERT R1 K12 [+5]
  MOVE R3 R1
  LOADK R4 K12 ["Escape sequences \n, \r, \t, \f, \v are not supported due to Lua pattern limitations (use literal characters)"]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  LOADK R4 K13 ["\x"]
  NAMECALL R2 R0 K1 ["find"]
  CALL R2 2 1
  JUMPIF R2 [+5]
  LOADK R4 K14 ["\u"]
  NAMECALL R2 R0 K1 ["find"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  FASTCALL2K TABLE_INSERT R1 K15 [+5]
  MOVE R3 R1
  LOADK R4 K15 ["Hex (\x) and Unicode (\u) escape sequences are not supported due to Lua pattern limitations"]
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  LENGTH R3 R1
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+7]
  GETIMPORT R2 K17 [table.concat]
  MOVE R3 R1
  LOADK R4 K18 ["; "]
  CALL R2 2 1
  JUMPIF R2 [+1]
  LOADNIL R2
  MOVE R3 R0
  MOVE R4 R2
  RETURN R3 2

PROTO_5:
  LOADN R1 1
  LENGTH R2 R0
  JUMPIFNOTLE R1 R2 [+16]
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["sub"]
  CALL R2 3 1
  JUMPIFNOTEQKS R2 K1 ["\"] [+3]
  ADDK R1 R1 K2 [2]
  JUMP [+5]
  JUMPIFNOTEQKS R2 K3 ["|"] [+3]
  LOADB R3 1
  RETURN R3 1
  ADDK R1 R1 K4 [1]
  JUMPBACK [-18]
  LOADB R2 0
  RETURN R2 1

PROTO_6:
  LOADN R2 1
  JUMPIFLT R1 R2 [+11]
  LENGTH R2 R0
  JUMPIFLT R2 R1 [+8]
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["sub"]
  CALL R2 3 1
  JUMPIFEQKS R2 K1 ["("] [+3]
  LOADNIL R2
  RETURN R2 1
  LOADN R2 1
  ADDK R3 R1 K2 [1]
  LENGTH R4 R0
  JUMPIFNOTLE R3 R4 [+31]
  LOADN R4 0
  JUMPIFNOTLT R4 R2 [+28]
  MOVE R6 R3
  MOVE R7 R3
  NAMECALL R4 R0 K0 ["sub"]
  CALL R4 3 1
  JUMPIFNOTEQKS R4 K3 ["\"] [+9]
  ADDK R5 R3 K2 [1]
  LENGTH R6 R0
  JUMPIFNOTLE R5 R6 [+3]
  ADDK R3 R3 K4 [2]
  JUMP [+13]
  ADDK R3 R3 K2 [1]
  JUMP [+11]
  JUMPIFNOTEQKS R4 K1 ["("] [+4]
  ADDK R2 R2 K2 [1]
  ADDK R3 R3 K2 [1]
  JUMP [+6]
  JUMPIFNOTEQKS R4 K5 [")"] [+4]
  SUBK R2 R2 K2 [1]
  ADDK R3 R3 K2 [1]
  JUMP [+1]
  ADDK R3 R3 K2 [1]
  JUMPBACK [-33]
  JUMPIFNOTEQKN R2 K6 [0] [+3]
  SUBK R4 R3 K2 [1]
  JUMPIF R4 [+1]
  LOADNIL R4
  RETURN R4 1

PROTO_7:
  LOADN R4 1
  LENGTH R2 R0
  LOADN R3 1
  FORNPREP R2
  GETTABLE R6 R0 R4
  MOVE R7 R1
  CONCAT R5 R6 R7
  SETTABLE R5 R0 R4
  FORNLOOP R2
  RETURN R0 1

PROTO_8:
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R8 R1
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  MOVE R16 R7
  MOVE R17 R12
  CONCAT R15 R16 R17
  FASTCALL2 TABLE_INSERT R2 R15 [+4]
  MOVE R14 R2
  GETIMPORT R13 K2 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-10]
  FORGLOOP R3 2 [-16]
  RETURN R2 1

PROTO_9:
  ORK R2 R1 K0 [1]
  NEWTABLE R3 0 1
  NEWTABLE R4 0 1
  LOADK R5 K1 [""]
  SETLIST R4 R5 1 [1]
  SETLIST R3 R4 1 [1]
  LOADN R4 1
  LENGTH R5 R0
  JUMPIFNOTLE R2 R5 [+103]
  MOVE R7 R2
  MOVE R8 R2
  NAMECALL R5 R0 K2 ["sub"]
  CALL R5 3 1
  JUMPIFNOTEQKS R5 K3 ["\"] [+35]
  LENGTH R6 R0
  JUMPIFNOTLT R2 R6 [+20]
  MOVE R7 R5
  ADDK R10 R2 K0 [1]
  ADDK R11 R2 K0 [1]
  NAMECALL R8 R0 K2 ["sub"]
  CALL R8 3 1
  CONCAT R6 R7 R8
  GETTABLE R7 R3 R4
  LOADN R10 1
  LENGTH R8 R7
  LOADN R9 1
  FORNPREP R8
  GETTABLE R12 R7 R10
  MOVE R13 R6
  CONCAT R11 R12 R13
  SETTABLE R11 R7 R10
  FORNLOOP R8
  ADDK R2 R2 K4 [2]
  JUMP [+72]
  GETTABLE R6 R3 R4
  LOADN R9 1
  LENGTH R7 R6
  LOADN R8 1
  FORNPREP R7
  GETTABLE R11 R6 R9
  MOVE R12 R5
  CONCAT R10 R11 R12
  SETTABLE R10 R6 R9
  FORNLOOP R7
  ADDK R2 R2 K0 [1]
  JUMP [+60]
  JUMPIFNOTEQKS R5 K5 ["("] [+34]
  ADDK R6 R2 K0 [1]
  GETUPVAL R7 0
  MOVE R8 R0
  MOVE R9 R2
  CALL R7 2 1
  JUMPIF R7 [+12]
  GETTABLE R8 R3 R4
  LOADN R11 1
  LENGTH R9 R8
  LOADN R10 1
  FORNPREP R9
  GETTABLE R13 R8 R11
  MOVE R14 R5
  CONCAT R12 R13 R14
  SETTABLE R12 R8 R11
  FORNLOOP R9
  ADDK R2 R2 K0 [1]
  JUMP [+40]
  MOVE R10 R6
  SUBK R11 R7 K0 [1]
  NAMECALL R8 R0 K2 ["sub"]
  CALL R8 3 1
  GETUPVAL R9 1
  MOVE R10 R8
  CALL R9 1 1
  GETUPVAL R10 2
  GETTABLE R11 R3 R4
  MOVE R12 R9
  CALL R10 2 1
  SETTABLE R10 R3 R4
  ADDK R2 R7 K0 [1]
  JUMP [+25]
  JUMPIFNOTEQKS R5 K6 [")"] [+2]
  JUMP [+23]
  JUMPIFNOTEQKS R5 K7 ["|"] [+10]
  ADDK R4 R4 K0 [1]
  NEWTABLE R6 0 1
  LOADK R7 K1 [""]
  SETLIST R6 R7 1 [1]
  SETTABLE R6 R3 R4
  ADDK R2 R2 K0 [1]
  JUMP [+11]
  GETTABLE R6 R3 R4
  LOADN R9 1
  LENGTH R7 R6
  LOADN R8 1
  FORNPREP R7
  GETTABLE R11 R6 R9
  MOVE R12 R5
  CONCAT R10 R11 R12
  SETTABLE R10 R6 R9
  FORNLOOP R7
  ADDK R2 R2 K0 [1]
  JUMPBACK [-105]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  MOVE R11 R10
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  JUMPIFEQKS R15 K1 [""] [+8]
  FASTCALL2 TABLE_INSERT R5 R15 [+5]
  MOVE R17 R5
  MOVE R18 R15
  GETIMPORT R16 K10 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [-10]
  FORGLOOP R6 2 [-16]
  LENGTH R7 R5
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+3]
  MOVE R6 R5
  JUMPIF R6 [+5]
  NEWTABLE R6 0 1
  LOADK R7 K1 [""]
  SETLIST R6 R7 1 [1]
  MOVE R7 R2
  RETURN R6 2

PROTO_10:
  JUMPIFNOT R0 [+2]
  JUMPIFNOTEQKS R0 K0 [""] [+7]
  NEWTABLE R1 0 1
  LOADK R2 K0 [""]
  SETLIST R1 R2 1 [1]
  RETURN R1 1
  GETUPVAL R1 0
  MOVE R2 R0
  LOADN R3 1
  CALL R1 2 2
  LENGTH R4 R1
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+3]
  MOVE R3 R1
  JUMPIF R3 [+5]
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  RETURN R3 1

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["find"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_12:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+4]
  NAMECALL R1 R0 K0 ["lower"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  MOVE R1 R0
  GETUPVAL R3 0
  JUMPIFNOT R3 [+5]
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["lower"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  GETUPVAL R2 1
  GETIMPORT R3 K2 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CALL R3 1 2
  JUMPIFNOT R3 [+1]
  RETURN R4 1
  GETIMPORT R5 K4 [warn]
  GETIMPORT R6 K7 [string.format]
  LOADK R7 K8 ["Pattern failed: '%s' -> '%s', using literal search"]
  GETUPVAL R8 2
  GETUPVAL R9 1
  CALL R6 3 -1
  CALL R5 -1 0
  GETUPVAL R8 2
  LOADN R9 1
  LOADB R10 1
  NAMECALL R6 R1 K9 ["find"]
  CALL R6 4 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 2
  JUMPIFNOT R3 [+6]
  GETIMPORT R4 K1 [warn]
  LOADK R6 K2 ["Pattern validation warnings: "]
  MOVE R7 R3
  CONCAT R5 R6 R7
  CALL R4 1 0
  MOVE R4 R2
  MOVE R5 R4
  NEWTABLE R6 0 6
  NEWTABLE R7 0 2
  LOADK R8 K3 ["\s"]
  LOADK R9 K4 ["%%s"]
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADK R9 K5 ["\S"]
  LOADK R10 K6 ["%%S"]
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADK R10 K7 ["\d"]
  LOADK R11 K8 ["%%d"]
  SETLIST R9 R10 2 [1]
  NEWTABLE R10 0 2
  LOADK R11 K9 ["\D"]
  LOADK R12 K10 ["%%D"]
  SETLIST R10 R11 2 [1]
  NEWTABLE R11 0 2
  LOADK R12 K11 ["\w"]
  LOADK R13 K12 ["%%w"]
  SETLIST R11 R12 2 [1]
  NEWTABLE R12 0 2
  LOADK R13 K13 ["\W"]
  LOADK R14 K14 ["%%W"]
  SETLIST R12 R13 2 [1]
  SETLIST R6 R7 6 [1]
  MOVE R7 R5
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEN R15 R12 1
  GETTABLEN R16 R12 2
  NAMECALL R13 R7 K15 ["gsub"]
  CALL R13 3 1
  MOVE R7 R13
  FORGLOOP R8 2 [-7]
  MOVE R4 R7
  MOVE R5 R4
  NEWTABLE R6 0 14
  NEWTABLE R7 0 2
  LOADK R8 K16 ["\%."]
  LOADK R9 K17 ["ESCAPED_DOT"]
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADK R9 K18 ["\%("]
  LOADK R10 K19 ["ESCAPED_LPAREN"]
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADK R10 K20 ["\%)"]
  LOADK R11 K21 ["ESCAPED_RPAREN"]
  SETLIST R9 R10 2 [1]
  NEWTABLE R10 0 2
  LOADK R11 K22 ["\%["]
  LOADK R12 K23 ["ESCAPED_LBRACKET"]
  SETLIST R10 R11 2 [1]
  NEWTABLE R11 0 2
  LOADK R12 K24 ["\%]"]
  LOADK R13 K25 ["ESCAPED_RBRACKET"]
  SETLIST R11 R12 2 [1]
  NEWTABLE R12 0 2
  LOADK R13 K26 ["\%{"]
  LOADK R14 K27 ["ESCAPED_LBRACE"]
  SETLIST R12 R13 2 [1]
  NEWTABLE R13 0 2
  LOADK R14 K28 ["\%}"]
  LOADK R15 K29 ["ESCAPED_RBRACE"]
  SETLIST R13 R14 2 [1]
  NEWTABLE R14 0 2
  LOADK R15 K30 ["\%+"]
  LOADK R16 K31 ["ESCAPED_PLUS"]
  SETLIST R14 R15 2 [1]
  NEWTABLE R15 0 2
  LOADK R16 K32 ["\%*"]
  LOADK R17 K33 ["ESCAPED_STAR"]
  SETLIST R15 R16 2 [1]
  NEWTABLE R16 0 2
  LOADK R17 K34 ["\%?"]
  LOADK R18 K35 ["ESCAPED_QUESTION"]
  SETLIST R16 R17 2 [1]
  NEWTABLE R17 0 2
  LOADK R18 K36 ["\%-"]
  LOADK R19 K37 ["ESCAPED_DASH"]
  SETLIST R17 R18 2 [1]
  NEWTABLE R18 0 2
  LOADK R19 K38 ["\%^"]
  LOADK R20 K39 ["ESCAPED_CARET"]
  SETLIST R18 R19 2 [1]
  NEWTABLE R19 0 2
  LOADK R20 K40 ["\%$"]
  LOADK R21 K41 ["ESCAPED_DOLLAR"]
  SETLIST R19 R20 2 [1]
  NEWTABLE R20 0 2
  LOADK R21 K42 ["\|"]
  LOADK R22 K43 ["ESCAPED_PIPE"]
  SETLIST R20 R21 2 [1]
  SETLIST R6 R7 14 [1]
  MOVE R7 R5
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEN R15 R12 1
  GETTABLEN R16 R12 2
  NAMECALL R13 R7 K15 ["gsub"]
  CALL R13 3 1
  MOVE R7 R13
  FORGLOOP R8 2 [-7]
  MOVE R4 R7
  MOVE R5 R4
  LOADK R8 K44 ["%(%?:"]
  LOADK R9 K45 ["("]
  NAMECALL R6 R5 K15 ["gsub"]
  CALL R6 3 1
  LOADK R9 K46 ["\(%d+)"]
  LOADK R10 K47 ["%%%1"]
  NAMECALL R7 R6 K15 ["gsub"]
  CALL R7 3 1
  MOVE R6 R7
  MOVE R4 R6
  MOVE R5 R4
  NEWTABLE R6 0 14
  NEWTABLE R7 0 2
  LOADK R8 K17 ["ESCAPED_DOT"]
  LOADK R9 K48 ["%%."]
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADK R9 K19 ["ESCAPED_LPAREN"]
  LOADK R10 K49 ["%%("]
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADK R10 K21 ["ESCAPED_RPAREN"]
  LOADK R11 K50 ["%%)"]
  SETLIST R9 R10 2 [1]
  NEWTABLE R10 0 2
  LOADK R11 K23 ["ESCAPED_LBRACKET"]
  LOADK R12 K51 ["%%["]
  SETLIST R10 R11 2 [1]
  NEWTABLE R11 0 2
  LOADK R12 K25 ["ESCAPED_RBRACKET"]
  LOADK R13 K52 ["%%]"]
  SETLIST R11 R12 2 [1]
  NEWTABLE R12 0 2
  LOADK R13 K27 ["ESCAPED_LBRACE"]
  LOADK R14 K53 ["{"]
  SETLIST R12 R13 2 [1]
  NEWTABLE R13 0 2
  LOADK R14 K29 ["ESCAPED_RBRACE"]
  LOADK R15 K54 ["}"]
  SETLIST R13 R14 2 [1]
  NEWTABLE R14 0 2
  LOADK R15 K31 ["ESCAPED_PLUS"]
  LOADK R16 K55 ["%%+"]
  SETLIST R14 R15 2 [1]
  NEWTABLE R15 0 2
  LOADK R16 K33 ["ESCAPED_STAR"]
  LOADK R17 K56 ["%%*"]
  SETLIST R15 R16 2 [1]
  NEWTABLE R16 0 2
  LOADK R17 K35 ["ESCAPED_QUESTION"]
  LOADK R18 K57 ["%%?"]
  SETLIST R16 R17 2 [1]
  NEWTABLE R17 0 2
  LOADK R18 K37 ["ESCAPED_DASH"]
  LOADK R19 K58 ["%%-"]
  SETLIST R17 R18 2 [1]
  NEWTABLE R18 0 2
  LOADK R19 K39 ["ESCAPED_CARET"]
  LOADK R20 K59 ["%%^"]
  SETLIST R18 R19 2 [1]
  NEWTABLE R19 0 2
  LOADK R20 K41 ["ESCAPED_DOLLAR"]
  LOADK R21 K60 ["%%$"]
  SETLIST R19 R20 2 [1]
  NEWTABLE R20 0 2
  LOADK R21 K43 ["ESCAPED_PIPE"]
  LOADK R22 K61 ["|"]
  SETLIST R20 R21 2 [1]
  SETLIST R6 R7 14 [1]
  MOVE R7 R5
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEN R15 R12 1
  GETTABLEN R16 R12 2
  NAMECALL R13 R7 K15 ["gsub"]
  CALL R13 3 1
  MOVE R7 R13
  FORGLOOP R8 2 [-7]
  MOVE R4 R7
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE REF R4
  CAPTURE VAL R0
  CLOSEUPVALS R4
  RETURN R5 1

PROTO_14:
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R6 R5
  MOVE R7 R0
  CALL R6 1 1
  JUMPIFNOT R6 [+2]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R1 2 [-7]
  LOADB R1 0
  RETURN R1 1

PROTO_15:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+25]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 1
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R9 2
  MOVE R10 R8
  MOVE R11 R1
  CALL R9 2 1
  FASTCALL2 TABLE_INSERT R3 R9 [+5]
  MOVE R11 R3
  MOVE R12 R9
  GETIMPORT R10 K2 [table.insert]
  CALL R10 2 0
  FORGLOOP R4 2 [-12]
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  RETURN R4 1
  GETUPVAL R2 2
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  RETURN R2 1

PROTO_16:
  LOADK R4 K0 ["([^,]+)"]
  NAMECALL R2 R1 K1 ["gmatch"]
  CALL R2 2 3
  FORGPREP R2
  LOADK R10 K2 ["^%s*(.-)%s*$"]
  NAMECALL R8 R5 K3 ["match"]
  CALL R8 2 1
  OR R7 R8 R5
  JUMPIFNOT R7 [+7]
  GETUPVAL R8 0
  MOVE R9 R0
  MOVE R10 R7
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  LOADB R8 1
  RETURN R8 1
  FORGLOOP R2 1 [-14]
  LOADB R2 0
  RETURN R2 1

PROTO_17:
  LOADK R4 K0 ["{[^}]+}"]
  NAMECALL R2 R1 K1 ["find"]
  CALL R2 2 2
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+2]
  LOADB R4 0
  RETURN R4 1
  LOADN R6 1
  SUBK R7 R2 K2 [1]
  NAMECALL R4 R1 K3 ["sub"]
  CALL R4 3 1
  ADDK R7 R3 K2 [1]
  NAMECALL R5 R1 K3 ["sub"]
  CALL R5 2 1
  ADDK R8 R2 K2 [1]
  SUBK R9 R3 K2 [1]
  NAMECALL R6 R1 K3 ["sub"]
  CALL R6 3 1
  LOADK R9 K4 ["([^,]+)"]
  NAMECALL R7 R6 K5 ["gmatch"]
  CALL R7 2 3
  FORGPREP R7
  LOADK R15 K6 ["^%s*(.-)%s*$"]
  NAMECALL R13 R10 K7 ["match"]
  CALL R13 2 1
  OR R12 R13 R10
  JUMPIFNOT R12 [+11]
  MOVE R14 R4
  MOVE R15 R12
  MOVE R16 R5
  CONCAT R13 R14 R16
  GETUPVAL R14 0
  MOVE R15 R0
  MOVE R16 R13
  CALL R14 2 1
  JUMPIFNOT R14 [+2]
  LOADB R14 1
  RETURN R14 1
  FORGLOOP R7 1 [-18]
  LOADB R7 0
  RETURN R7 1

PROTO_18:
  MOVE R1 R0
  LOADK R4 K0 ["([%+%-%[%]%(%)%^%$])"]
  LOADK R5 K1 ["%%%1"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K3 ["%."]
  LOADK R5 K4 ["%%."]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K5 ["%*%*/%*"]
  LOADK R5 K6 ["GLOB_RECURSIVE_ALL"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K7 ["%*%*"]
  LOADK R5 K8 ["GLOB_DOUBLESTAR"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K9 ["%*"]
  LOADK R5 K10 ["GLOB_STAR"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K11 ["%?"]
  LOADK R5 K12 ["GLOB_QUESTION"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K13 ["/"]
  LOADK R5 K4 ["%%."]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K6 ["GLOB_RECURSIVE_ALL"]
  LOADK R5 K14 [".*"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K8 ["GLOB_DOUBLESTAR"]
  LOADK R5 K14 [".*"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K10 ["GLOB_STAR"]
  LOADK R5 K15 ["[^%%.]*"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R4 K12 ["GLOB_QUESTION"]
  LOADK R5 K16 ["[^%%.]"]
  NAMECALL R2 R1 K2 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_19:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["lower"]
  CALL R1 1 1
  LOADK R4 K1 ["^"]
  GETUPVAL R7 1
  NAMECALL R7 R7 K0 ["lower"]
  CALL R7 1 1
  MOVE R5 R7
  LOADK R6 K2 ["$"]
  CONCAT R3 R4 R6
  NAMECALL R1 R1 K3 ["match"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_20:
  JUMPIFNOT R1 [+2]
  JUMPIFNOTEQKS R1 K0 [""] [+3]
  LOADB R2 1
  RETURN R2 1
  LOADK R4 K1 [","]
  NAMECALL R2 R1 K2 ["find"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  RETURN R2 1
  LOADK R4 K3 ["{[^}]+}"]
  NAMECALL R2 R1 K2 ["find"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 1
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  RETURN R2 1
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K5 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CALL R3 1 2
  JUMPIFNOT R3 [+2]
  MOVE R5 R4
  JUMPIF R5 [+1]
  LOADB R5 0
  RETURN R5 1

PROTO_21:
  JUMPIF R1 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["ClassName"]
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_22:
  JUMPIFNOT R1 [+2]
  JUMPIFNOTEQKS R1 K0 [""] [+3]
  LOADB R2 1
  RETURN R2 1
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_23:
  LOADK R3 K0 ["Script"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+10]
  LOADK R3 K2 ["LocalScript"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+5]
  LOADK R3 K3 ["ModuleScript"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K4 ["Source"]
  JUMPIFNOT R1 [+3]
  JUMPIFEQKS R1 K5 [""] [+2]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_24:
  GETTABLEKS R2 R0 K0 ["ClassName"]
  JUMPIFEQKS R2 K1 ["Script"] [+7]
  JUMPIFEQKS R2 K2 ["LocalScript"] [+5]
  JUMPIFEQKS R2 K3 ["ModuleScript"] [+3]
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R4 R1 K4 ["script_class"]
  JUMPIF R4 [+2]
  LOADB R3 1
  JUMP [+6]
  GETTABLEKS R5 R0 K0 ["ClassName"]
  JUMPIFEQ R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R3 R1 K5 ["instance_type"]
  JUMPIFNOT R3 [+34]
  GETTABLEKS R3 R1 K5 ["instance_type"]
  JUMPIFEQKS R3 K6 [""] [+31]
  LOADB R3 0
  GETTABLEKS R4 R0 K7 ["Parent"]
  JUMPIFNOT R4 [+23]
  GETIMPORT R5 K9 [game]
  JUMPIFEQ R4 R5 [+20]
  MOVE R6 R4
  GETTABLEKS R7 R1 K5 ["instance_type"]
  JUMPIFNOT R7 [+2]
  JUMPIFNOTEQKS R7 K6 [""] [+3]
  LOADB R5 1
  JUMP [+5]
  MOVE R10 R7
  NAMECALL R8 R6 K10 ["IsA"]
  CALL R8 2 1
  MOVE R5 R8
  JUMPIFNOT R5 [+2]
  LOADB R3 1
  JUMP [+3]
  GETTABLEKS R4 R4 K7 ["Parent"]
  JUMPBACK [-24]
  JUMPIF R3 [+2]
  LOADB R5 0
  RETURN R5 1
  LOADB R3 1
  RETURN R3 1

PROTO_25:
  NAMECALL R2 R0 K0 ["GetFullName"]
  CALL R2 1 1
  LOADK R5 K1 ["^CoreGui"]
  NAMECALL R3 R2 K2 ["find"]
  CALL R3 2 1
  JUMPIF R3 [+10]
  LOADK R5 K3 ["^PlayerGui"]
  NAMECALL R3 R2 K2 ["find"]
  CALL R3 2 1
  JUMPIF R3 [+5]
  LOADK R5 K4 ["^LoadedCode"]
  NAMECALL R3 R2 K2 ["find"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R3 R1 K5 ["path"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R5 R1 K5 ["path"]
  LOADN R6 1
  LOADB R7 1
  NAMECALL R3 R2 K2 ["find"]
  CALL R3 4 1
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R3 R1 K6 ["glob"]
  JUMPIFNOT R3 [+8]
  GETUPVAL R3 0
  MOVE R4 R2
  GETTABLEKS R5 R1 K6 ["glob"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  LOADB R3 1
  RETURN R3 1

PROTO_26:
  NEWTABLE R3 0 0
  JUMPIFNOT R2 [+65]
  MOVE R4 R1
  MOVE R5 R0
  CALL R4 1 1
  JUMPIFNOT R4 [+105]
  NEWTABLE R5 0 0
  LOADK R8 K0 ["([^
]*)?
?"]
  NAMECALL R6 R0 K1 ["gmatch"]
  CALL R6 2 3
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R9 [+5]
  MOVE R12 R5
  MOVE R13 R9
  GETIMPORT R11 K4 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 1 [-8]
  MOVE R4 R5
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFEQKS R9 K5 [""] [+16]
  DUPTABLE R10 K9 [{"lineNum", "content", "isMatch"}]
  SETTABLEKS R8 R10 K6 ["lineNum"]
  SETTABLEKS R9 R10 K7 ["content"]
  LOADB R11 1
  SETTABLEKS R11 R10 K8 ["isMatch"]
  FASTCALL2 TABLE_INSERT R3 R10 [+5]
  MOVE R12 R3
  MOVE R13 R10
  GETIMPORT R11 K4 [table.insert]
  CALL R11 2 0
  FORGLOOP R5 2 [-18]
  LENGTH R5 R3
  JUMPIFNOTEQKN R5 K10 [0] [+63]
  DUPTABLE R5 K9 [{"lineNum", "content", "isMatch"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K6 ["lineNum"]
  LOADK R6 K11 ["Multiline match found"]
  SETTABLEKS R6 R5 K7 ["content"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["isMatch"]
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K4 [table.insert]
  CALL R6 2 0
  RETURN R3 1
  NEWTABLE R5 0 0
  LOADK R8 K0 ["([^
]*)?
?"]
  NAMECALL R6 R0 K1 ["gmatch"]
  CALL R6 2 3
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R9 [+5]
  MOVE R12 R5
  MOVE R13 R9
  GETIMPORT R11 K4 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 1 [-8]
  MOVE R4 R5
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFEQKS R9 K5 [""] [+20]
  MOVE R10 R1
  MOVE R11 R9
  CALL R10 1 1
  JUMPIFNOT R10 [+15]
  DUPTABLE R10 K9 [{"lineNum", "content", "isMatch"}]
  SETTABLEKS R8 R10 K6 ["lineNum"]
  SETTABLEKS R9 R10 K7 ["content"]
  LOADB R11 1
  SETTABLEKS R11 R10 K8 ["isMatch"]
  FASTCALL2 TABLE_INSERT R3 R10 [+5]
  MOVE R12 R3
  MOVE R13 R10
  GETIMPORT R11 K4 [table.insert]
  CALL R11 2 0
  FORGLOOP R5 2 [-22]
  RETURN R3 1

PROTO_27:
  MOVE R10 R0
  GETIMPORT R11 K2 [string.format]
  LOADK R12 K3 ["File: %s"]
  MOVE R13 R1
  CALL R11 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K6 [table.insert]
  CALL R9 -1 0
  ADDK R8 R8 K7 [1]
  NEWTABLE R10 0 0
  LOADK R13 K8 ["([^
]*)?
?"]
  NAMECALL R11 R2 K9 ["gmatch"]
  CALL R11 2 3
  FORGPREP R11
  FASTCALL2 TABLE_INSERT R10 R14 [+5]
  MOVE R17 R10
  MOVE R18 R14
  GETIMPORT R16 K6 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 1 [-8]
  MOVE R9 R10
  NEWTABLE R10 0 0
  MOVE R11 R3
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  JUMPIFLE R7 R8 [+112]
  GETTABLEKS R16 R15 K10 ["lineNum"]
  LOADN R20 1
  SUB R21 R16 R5
  FASTCALL2 MATH_MAX R20 R21 [+3]
  GETIMPORT R19 K13 [math.max]
  CALL R19 2 1
  SUBK R17 R16 K7 [1]
  LOADN R18 1
  FORNPREP R17
  GETTABLE R20 R9 R19
  JUMPIFNOT R20 [+25]
  GETTABLE R20 R10 R19
  JUMPIF R20 [+23]
  JUMPIFNOT R4 [+7]
  GETIMPORT R20 K2 [string.format]
  LOADK R21 K14 ["%6d:%s"]
  MOVE R22 R19
  LOADK R23 K15 [""]
  CALL R20 3 1
  JUMPIF R20 [+1]
  LOADK R20 K15 [""]
  MOVE R24 R20
  GETTABLE R25 R9 R19
  CONCAT R23 R24 R25
  FASTCALL2 TABLE_INSERT R0 R23 [+4]
  MOVE R22 R0
  GETIMPORT R21 K6 [table.insert]
  CALL R21 2 0
  LOADB R21 1
  SETTABLE R21 R10 R19
  ADDK R8 R8 K7 [1]
  JUMPIFLE R7 R8 [+2]
  FORNLOOP R17
  JUMPIFLE R7 R8 [+70]
  GETTABLE R17 R10 R16
  JUMPIF R17 [+22]
  JUMPIFNOT R4 [+7]
  GETIMPORT R17 K2 [string.format]
  LOADK R18 K14 ["%6d:%s"]
  MOVE R19 R16
  LOADK R20 K15 [""]
  CALL R17 3 1
  JUMPIF R17 [+1]
  LOADK R17 K15 [""]
  MOVE R21 R17
  GETTABLEKS R22 R15 K16 ["content"]
  CONCAT R20 R21 R22
  FASTCALL2 TABLE_INSERT R0 R20 [+4]
  MOVE R19 R0
  GETIMPORT R18 K6 [table.insert]
  CALL R18 2 0
  LOADB R18 1
  SETTABLE R18 R10 R16
  ADDK R8 R8 K7 [1]
  JUMPIFLE R7 R8 [+44]
  ADDK R19 R16 K7 [1]
  LENGTH R21 R9
  ADD R22 R16 R6
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K18 [math.min]
  CALL R20 2 1
  MOVE R17 R20
  LOADN R18 1
  FORNPREP R17
  GETTABLE R20 R9 R19
  JUMPIFNOT R20 [+25]
  GETTABLE R20 R10 R19
  JUMPIF R20 [+23]
  JUMPIFNOT R4 [+7]
  GETIMPORT R20 K2 [string.format]
  LOADK R21 K14 ["%6d:%s"]
  MOVE R22 R19
  LOADK R23 K15 [""]
  CALL R20 3 1
  JUMPIF R20 [+1]
  LOADK R20 K15 [""]
  MOVE R24 R20
  GETTABLE R25 R9 R19
  CONCAT R23 R24 R25
  FASTCALL2 TABLE_INSERT R0 R23 [+4]
  MOVE R22 R0
  GETIMPORT R21 K6 [table.insert]
  CALL R21 2 0
  LOADB R21 1
  SETTABLE R21 R10 R19
  ADDK R8 R8 K7 [1]
  JUMPIFLE R7 R8 [+2]
  FORNLOOP R17
  JUMPIFLE R7 R8 [+3]
  FORGLOOP R11 2 [-112]
  JUMPIFNOTLT R8 R7 [+9]
  FASTCALL2K TABLE_INSERT R0 K15 [+5]
  MOVE R12 R0
  LOADK R13 K15 [""]
  GETIMPORT R11 K6 [table.insert]
  CALL R11 2 0
  ADDK R8 R8 K7 [1]
  RETURN R8 1

PROTO_28:
  GETTABLEKS R1 R0 K0 ["pattern"]
  JUMPIFNOT R1 [+2]
  JUMPIFNOTEQKS R1 K1 [""] [+4]
  LOADNIL R2
  LOADK R3 K2 ["Error: Pattern cannot be empty"]
  RETURN R2 2
  GETTABLEKS R3 R0 K4 ["output_mode"]
  ORK R2 R3 K3 ["files_with_matches"]
  GETTABLEKS R4 R0 K6 ["-i"]
  ORK R3 R4 K5 [False]
  GETTABLEKS R5 R0 K7 ["-n"]
  ORK R4 R5 K5 [False]
  GETTABLEKS R5 R0 K8 ["-B"]
  JUMPIF R5 [+4]
  GETTABLEKS R5 R0 K9 ["-C"]
  JUMPIF R5 [+1]
  LOADN R5 0
  GETTABLEKS R6 R0 K10 ["-A"]
  JUMPIF R6 [+4]
  GETTABLEKS R6 R0 K9 ["-C"]
  JUMPIF R6 [+1]
  LOADN R6 0
  GETTABLEKS R8 R0 K12 ["head_limit"]
  ORK R7 R8 K11 [50]
  GETTABLEKS R9 R0 K13 ["multiline"]
  ORK R8 R9 K5 [False]
  GETUPVAL R9 0
  MOVE R10 R1
  MOVE R11 R3
  CALL R9 2 1
  GETUPVAL R10 1
  MOVE R11 R1
  CALL R10 1 1
  DUPTABLE R11 K22 [{"pattern", "outputMode", "caseInsensitive", "showLineNumbers", "contextBefore", "contextAfter", "headLimit", "multiline", "patternMatcher", "hasAlternation"}]
  SETTABLEKS R1 R11 K0 ["pattern"]
  SETTABLEKS R2 R11 K14 ["outputMode"]
  SETTABLEKS R3 R11 K15 ["caseInsensitive"]
  SETTABLEKS R4 R11 K16 ["showLineNumbers"]
  SETTABLEKS R5 R11 K17 ["contextBefore"]
  SETTABLEKS R6 R11 K18 ["contextAfter"]
  SETTABLEKS R7 R11 K19 ["headLimit"]
  SETTABLEKS R8 R11 K13 ["multiline"]
  SETTABLEKS R9 R11 K20 ["patternMatcher"]
  SETTABLEKS R10 R11 K21 ["hasAlternation"]
  LOADNIL R12
  RETURN R11 2

PROTO_29:
  LOADK R7 K0 ["Script"]
  NAMECALL R5 R0 K1 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+10]
  LOADK R7 K2 ["LocalScript"]
  NAMECALL R5 R0 K1 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+5]
  LOADK R7 K3 ["ModuleScript"]
  NAMECALL R5 R0 K1 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+7]
  GETTABLEKS R5 R0 K4 ["Source"]
  JUMPIFNOT R5 [+4]
  JUMPIFEQKS R5 K5 [""] [+3]
  MOVE R4 R5
  JUMP [+1]
  LOADNIL R4
  JUMPIF R4 [+1]
  RETURN R3 1
  NAMECALL R5 R0 K6 ["GetFullName"]
  CALL R5 1 1
  GETUPVAL R6 0
  MOVE R7 R4
  GETTABLEKS R8 R1 K7 ["patternMatcher"]
  GETTABLEKS R9 R1 K8 ["multiline"]
  CALL R6 3 1
  LENGTH R7 R6
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+51]
  GETTABLEKS R7 R1 K9 ["outputMode"]
  JUMPIFNOTEQKS R7 K10 ["files_with_matches"] [+10]
  FASTCALL2 TABLE_INSERT R2 R5 [+5]
  MOVE R8 R2
  MOVE R9 R5
  GETIMPORT R7 K13 [table.insert]
  CALL R7 2 0
  ADDK R3 R3 K14 [1]
  RETURN R3 1
  GETTABLEKS R7 R1 K9 ["outputMode"]
  JUMPIFNOTEQKS R7 K15 ["count"] [+14]
  MOVE R8 R2
  GETIMPORT R9 K18 [string.format]
  LOADK R10 K19 ["%d:%s"]
  LENGTH R11 R6
  MOVE R12 R5
  CALL R9 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K13 [table.insert]
  CALL R7 -1 0
  ADDK R3 R3 K14 [1]
  RETURN R3 1
  GETTABLEKS R7 R1 K9 ["outputMode"]
  JUMPIFNOTEQKS R7 K20 ["content"] [+17]
  GETUPVAL R7 1
  MOVE R8 R2
  MOVE R9 R5
  MOVE R10 R4
  MOVE R11 R6
  GETTABLEKS R12 R1 K21 ["showLineNumbers"]
  GETTABLEKS R13 R1 K22 ["contextBefore"]
  GETTABLEKS R14 R1 K23 ["contextAfter"]
  GETTABLEKS R15 R1 K24 ["headLimit"]
  MOVE R16 R3
  CALL R7 9 1
  MOVE R3 R7
  RETURN R3 1

PROTO_30:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 2
  JUMPIF R2 [+1]
  JUMPIF R1 [+2]
  ORK R3 R2 K0 ["Unknown error creating search context"]
  RETURN R3 1
  NEWTABLE R3 0 0
  LOADN R4 0
  GETIMPORT R5 K2 [game]
  NAMECALL R5 R5 K3 ["GetDescendants"]
  CALL R5 1 3
  FORGPREP R5
  GETTABLEKS R10 R1 K4 ["headLimit"]
  JUMPIFLE R10 R4 [+20]
  GETUPVAL R10 1
  MOVE R11 R9
  MOVE R12 R0
  CALL R10 2 1
  JUMPIFNOT R10 [+12]
  GETUPVAL R10 2
  MOVE R11 R9
  MOVE R12 R0
  CALL R10 2 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R10 3
  MOVE R11 R9
  MOVE R12 R1
  MOVE R13 R3
  MOVE R14 R4
  CALL R10 4 1
  MOVE R4 R10
  FORGLOOP R5 2 [-22]
  LENGTH R5 R3
  JUMPIFNOTEQKN R5 K5 [0] [+3]
  LOADK R5 K6 ["No matches found for the given query."]
  RETURN R5 1
  GETTABLEKS R5 R1 K4 ["headLimit"]
  JUMPIFNOTLE R5 R4 [+8]
  FASTCALL2K TABLE_INSERT R3 K7 [+5]
  MOVE R6 R3
  LOADK R7 K7 ["... Search stopped after reaching the output limit."]
  GETIMPORT R5 K10 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K12 [table.concat]
  MOVE R6 R3
  LOADK R7 K13 ["
"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_31:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_32:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["addText"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["build"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_33:
  GETTABLEKS R1 R0 K0 ["networking"]
  LOADK R4 K1 ["GrepTool_grep"]
  DUPCLOSURE R5 K2 [PROTO_31]
  CAPTURE UPVAL U0
  NAMECALL R2 R1 K3 ["OnHostInvokeAsync"]
  CALL R2 3 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["define"]
  CALL R4 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["Grep"]
  NAMECALL R4 R4 K6 ["setName"]
  CALL R4 2 1
  LOADK R6 K7 ["A ripgrep style search tool for Roblox game hierarchy with regex support, glob pattern matching, and path based filtering. Output is limited to 50 results by default, override `headLimit` to change the output limit.

KEY FEATURES:
- Filter by script class (\"Script\", \"LocalScript\", \"ModuleScript\") or instance type
- Multiple output modes: \"content\" (matching lines), \"files_with_matches\" (file paths), \"count\" (match counts)
- Context lines and line numbers for detailed analysis
- Output limiting (default: 50 results)
- Glob pattern support for file filtering using Unix-style paths

SUPPORTED REGEX FEATURES:
- Character classes: \s (whitespace), \S (non-whitespace), \d (digits), \D (non-digits), \w (word chars), \W (non-word chars)
- Anchors: ^ (start of line), $ (end of line)
- Quantifiers: * (zero or more), + (one or more), ? (zero or one), - (zero or more, non-greedy)
- Character sets: [abc], [^abc], [a-z], [0-9]
- Groups: () for capturing groups, (?:) for non-capturing (converted to capturing)
- Backreferences: \1, \2, etc. (converted to Lua %1, %2)
- Escaped literals: \., \(, \), \{, \}, \+, \*, \?, \^, \$, etc.
- Alternation: | (OR operator) - supports simple \"a|b|c\", grouped \"(func|class)Script\", nested \"((a|b)c|d)e\", and mixed \"a(b|c)d|e(f|g)\" patterns
- Case insensitive matching (via -i flag)
- Multiline mode (via multiline: true)
- Any character: . (matches any character except newline)

UNSUPPORTED REGEX FEATURES (due to Lua pattern limitations):
- Quantifiers: {n}, {n,}, {n,m} (specific repetition counts)
- Lookahead/lookbehind: (?=), (?!), (?<=), (?<!) 
- Word boundaries: \b, \B
- Escape sequences: \n, \r, \t, \f, \v (use literal characters instead)
- Hex/Unicode escapes: \x##, \u####
- Word boundaries: \b, \B
- Escape sequences: \n, \r, \t, \f, \v (use literal characters instead)
- Hex/Unicode escapes: \x##, \u####

GLOB PATTERNS:
- Use unix style '/' as path separator (converted to Roblox's '.' internally)
- Dots in patterns are treated as literal characters, not path separators
- Wildcards: * (single level), ** (multiple levels), ? (single character)
- Brace expansion: {Script,Module} expands to multiple alternatives
- Comma separation: Multiple patterns can be comma-separated
- Examples: 
  * \"Workspace/*\" matches \"Workspace.GameScript\" but not \"Workspace.Scripts.Helper\"
  * \"Workspace/**/*\" matches all descendants of Workspace
  * \"*/Scripts/*\" matches any script directly in any Scripts folder  
  * \"ServerStorage.Config\" matches exactly \"ServerStorage.Config\" (literal dots)
- Roblox paths like \"Workspace.Scripts.Helper\" match pattern \"Workspace/Scripts/Helper\"

EXAMPLES:
- Basic search: Grep(\"function.*test\", output_mode: \"files_with_matches\")
- Character classes: Grep(\"\\w+\\s*=\\s*\\d+\", output_mode: \"content\")
- Anchors: Grep(\"^local\\s+\\w+\", output_mode: \"content\") or Grep(\"return.*$\", output_mode: \"content\")
- Groups with backrefs: Grep(\"(function)\\s+(\\w+)\", output_mode: \"content\")
- Alternation: Grep(\"function|class|local\", output_mode: \"files_with_matches\")
- Grouped alternation: Grep(\"(get|set)Property\", output_mode: \"content\")
- Complex alternation: Grep(\"local\\s+(function|class)|return\\s+(true|false)\", output_mode: \"content\")
- Nested alternation: Grep(\"((start|begin)(Test|Spec)|end(Test|Spec))\", output_mode: \"content\")
- Mixed alternation: Grep(\"(local|global)\\s+(function|class)|(public|private)\\s+method\", output_mode: \"content\")
- Case insensitive: Grep(\"ERROR\", \"-i\": true, output_mode: \"files_with_matches\")
- Script filtering: Grep(\"Position\", script_class: \"LocalScript\", output_mode: \"content\")
- With context: Grep(\"function.*test\", output_mode: \"content\", \"-C\": 3, \"-n\": true)
- Multiline: Grep(\"function.*{.*return\", multiline: true, output_mode: \"content\")
- Glob filtering: Grep(\"local\", glob: \"Workspace/Scripts/*\", output_mode: \"files_with_matches\")
- Recursive glob: Grep(\"function\", glob: \"ServerStorage/**/*\", output_mode: \"content\")
"]
  NAMECALL R4 R4 K8 ["setDescription"]
  CALL R4 2 1
  LOADK R6 K9 ["pattern"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K14 ["The regular expression pattern to search for in file contents"]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K15 ["addArgument"]
  CALL R4 3 1
  LOADK R6 K16 ["path"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K17 ["Substring filter for Roblox paths. Searches entire game hierarchy, only includes scripts whose full path contains this substring. Uses literal string matching (not patterns). Case sensitive."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K19 ["output_mode"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K20 ["Output mode: \"content\" shows matching lines (supports -A/-B/-C context, -n line numbers, head_limit), \"files_with_matches\" shows file paths (supports head_limit), \"count\" shows match counts (supports head_limit). Defaults to \"files_with_matches\"."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K21 ["glob"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K22 ["Glob pattern to filter files using Unix-style paths. Use \"/\" as path separator (e.g., \"Workspace/Scripts/*\" to match direct children of Scripts folder). Dots in patterns are literal. Supports * (single level), ** (multi-level), ? (single char). Examples: \"ServerStorage/*\", \"Workspace/**/*\", \"*/Utils/*\"."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K23 ["script_class"]
  DUPTABLE R7 K25 [{"enum", "description"}]
  NEWTABLE R8 0 3
  LOADK R9 K26 ["Script"]
  LOADK R10 K27 ["LocalScript"]
  LOADK R11 K28 ["ModuleScript"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K24 ["enum"]
  LOADK R8 K29 ["Filter by script class: \"Script\", \"LocalScript\", or \"ModuleScript\". Only applies to script objects. Case sensitive."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K30 ["instance_type"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K31 ["Filter by Roblox instance type (e.g., \"Part\", \"Frame\", \"Folder\"). Only searches scripts that are descendants of objects matching this type. Case sensitive."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K32 ["-i"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K33 ["boolean"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K34 ["Case insensitive search. Doesn't affect the behavior of script class or instance type filtering, only pattern matching within files."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K35 ["-n"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K33 ["boolean"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K36 ["Show line numbers in output. Requires output_mode: \"content\", ignored otherwise."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K37 ["-A"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K38 ["number"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K39 ["Number of lines to show after each match. Requires output_mode: \"content\", ignored otherwise."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K40 ["-B"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K38 ["number"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K41 ["Number of lines to show before each match. Requires output_mode: \"content\", ignored otherwise."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K42 ["-C"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K38 ["number"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K43 ["Number of lines to show before and after each match. Requires output_mode: \"content\", ignored otherwise."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K44 ["multiline"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K33 ["boolean"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K45 ["Enable multiline mode where . matches newlines and patterns can span lines. Default: false."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K46 ["head_limit"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K38 ["number"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K47 ["Limit output to first N lines/entries, equivalent to \"| head -N\". Works across all output modes: content (limits output lines), files_with_matches (limits file paths), count (limits count entries). Default: 50."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  MOVE R6 R3
  NAMECALL R4 R4 K48 ["setHandler"]
  CALL R4 2 1
  NAMECALL R4 R4 K49 ["build"]
  CALL R4 1 1
  DUPTABLE R5 K51 [{"definition"}]
  SETTABLEKS R4 R5 K50 ["definition"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ModelContextProtocol"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Tools"]
  GETTABLEKS R4 R5 K11 ["ToolTypes"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["ToolBuilder"]
  GETTABLEKS R6 R2 K12 ["Util"]
  GETTABLEKS R5 R6 K14 ["ToolResult"]
  GETTABLEKS R6 R3 K15 ["ToolNames"]
  DUPCLOSURE R7 K16 [PROTO_0]
  DUPCLOSURE R8 K17 [PROTO_1]
  DUPCLOSURE R9 K18 [PROTO_2]
  DUPCLOSURE R10 K19 [PROTO_3]
  DUPCLOSURE R11 K20 [PROTO_4]
  LOADNIL R12
  LOADNIL R13
  LOADNIL R14
  DUPCLOSURE R15 K21 [PROTO_5]
  DUPCLOSURE R14 K22 [PROTO_6]
  DUPCLOSURE R16 K23 [PROTO_7]
  DUPCLOSURE R17 K24 [PROTO_8]
  NEWCLOSURE R12 P9
  CAPTURE REF R14
  CAPTURE REF R13
  CAPTURE VAL R17
  NEWCLOSURE R13 P10
  CAPTURE REF R12
  DUPCLOSURE R18 K25 [PROTO_13]
  CAPTURE VAL R11
  NEWCLOSURE R19 P12
  CAPTURE VAL R15
  CAPTURE REF R13
  CAPTURE VAL R18
  LOADNIL R20
  NEWCLOSURE R21 P13
  CAPTURE REF R20
  NEWCLOSURE R22 P14
  CAPTURE REF R20
  DUPCLOSURE R23 K26 [PROTO_18]
  DUPCLOSURE R20 K27 [PROTO_20]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  DUPCLOSURE R24 K28 [PROTO_21]
  DUPCLOSURE R25 K29 [PROTO_22]
  DUPCLOSURE R26 K30 [PROTO_23]
  DUPCLOSURE R27 K31 [PROTO_24]
  NEWCLOSURE R28 P21
  CAPTURE REF R20
  DUPCLOSURE R29 K32 [PROTO_26]
  DUPCLOSURE R30 K33 [PROTO_27]
  DUPCLOSURE R31 K34 [PROTO_28]
  CAPTURE VAL R19
  CAPTURE VAL R15
  DUPCLOSURE R32 K35 [PROTO_29]
  CAPTURE VAL R29
  CAPTURE VAL R30
  DUPCLOSURE R33 K36 [PROTO_30]
  CAPTURE VAL R31
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R32
  DUPCLOSURE R34 K37 [PROTO_33]
  CAPTURE VAL R33
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  CLOSEUPVALS R12
  RETURN R34 1
