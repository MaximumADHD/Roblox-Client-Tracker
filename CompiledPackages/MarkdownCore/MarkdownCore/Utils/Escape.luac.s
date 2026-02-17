PROTO_0:
  LOADK R3 K0 ["[&<>\"']"]
  NEWTABLE R4 8 0
  LOADK R5 K1 ["&amp;"]
  SETTABLEKS R5 R4 K2 ["&"]
  LOADK R5 K3 ["&lt;"]
  SETTABLEKS R5 R4 K4 ["<"]
  LOADK R5 K5 ["&gt;"]
  SETTABLEKS R5 R4 K6 [">"]
  LOADK R5 K7 ["&quot;"]
  SETTABLEKS R5 R4 K8 ["\""]
  LOADK R5 K9 ["&apos;"]
  SETTABLEKS R5 R4 K10 ["'"]
  NAMECALL R1 R0 K11 ["gsub"]
  CALL R1 3 1
  LOADK R4 K12 ["&amp;%l+;"]
  NEWTABLE R5 8 0
  LOADK R6 K3 ["&lt;"]
  SETTABLEKS R6 R5 K13 ["&amp;lt;"]
  LOADK R6 K5 ["&gt;"]
  SETTABLEKS R6 R5 K14 ["&amp;gt;"]
  LOADK R6 K7 ["&quot;"]
  SETTABLEKS R6 R5 K15 ["&amp;quot;"]
  LOADK R6 K9 ["&apos;"]
  SETTABLEKS R6 R5 K16 ["&amp;apos;"]
  LOADK R6 K1 ["&amp;"]
  SETTABLEKS R6 R5 K17 ["&amp;amp;"]
  NAMECALL R2 R1 K11 ["gsub"]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  LOADK R3 K0 ["&%l+;"]
  NEWTABLE R4 8 0
  LOADK R5 K1 ["<"]
  SETTABLEKS R5 R4 K2 ["&lt;"]
  LOADK R5 K3 [">"]
  SETTABLEKS R5 R4 K4 ["&gt;"]
  LOADK R5 K5 ["\""]
  SETTABLEKS R5 R4 K6 ["&quot;"]
  LOADK R5 K7 ["'"]
  SETTABLEKS R5 R4 K8 ["&apos;"]
  LOADK R5 K9 ["&"]
  SETTABLEKS R5 R4 K10 ["&amp;"]
  NAMECALL R1 R0 K11 ["gsub"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  DUPTABLE R2 K4 [{"escapeRichFormatting", "unescapeRichFormatting"}]
  SETTABLEKS R0 R2 K2 ["escapeRichFormatting"]
  SETTABLEKS R1 R2 K3 ["unescapeRichFormatting"]
  RETURN R2 1
