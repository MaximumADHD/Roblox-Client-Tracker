PROTO_0:
  GETTABLEKS R2 R0 K1 ["prompt"]
  ORK R1 R2 K0 [""]
  GETTABLEKS R2 R0 K2 ["attachedImageUri"]
  LOADK R4 K3 ["Received primitive generation request.
Prompt: \"%*\""]
  MOVE R6 R1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  GETUPVAL R4 0
  CALL R4 0 1
  MOVE R6 R3
  NAMECALL R4 R4 K5 ["addText"]
  CALL R4 2 1
  JUMPIFNOT R2 [+13]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["getImage"]
  MOVE R6 R2
  CALL R5 1 1
  JUMPIFNOT R5 [+7]
  GETTABLEKS R8 R5 K7 ["data"]
  GETTABLEKS R9 R5 K8 ["mimeType"]
  NAMECALL R6 R4 K9 ["addImage"]
  CALL R6 3 0
  NAMECALL R5 R4 K10 ["build"]
  CALL R5 1 -1
  RETURN R5 -1

PROTO_1:
  LOADK R0 K0 ["Primitive Gen"]
  RETURN R0 1

PROTO_2:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["define"]
  CALL R2 0 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["ToolNames"]
  GETTABLEKS R4 R5 K3 ["PrimitiveGen"]
  NAMECALL R2 R2 K4 ["setName"]
  CALL R2 2 1
  LOADK R4 K5 ["ONLY call this tool when the user EXPLICITLY requests to create something using primitive shapes, blocks, or geometric parts.

Trigger phrases include: \"make with primitives\", \"using primitive shapes\", \"with blocks\", \"using parts\", \"geometric shapes\", \"build with cubes/spheres/cylinders\", \"primitive model\".

DO NOT use this tool for generic requests like \"make a car\" or \"create a house\" - only use it when primitives are specifically requested.

If the user has provided a reference image, pass the image URI to this tool using the attachedImageUri parameter.

IMPORTANT: Only include a prompt if the user explicitly describes what they want to create. If the user only provides an image without a text description, leave the prompt as an empty string."]
  NAMECALL R2 R2 K6 ["setDescription"]
  CALL R2 2 1
  LOADK R4 K7 ["prompt"]
  DUPTABLE R5 K10 [{"type", "description"}]
  LOADK R6 K11 ["string"]
  SETTABLEKS R6 R5 K8 ["type"]
  LOADK R6 K12 ["The prompt to hint what should be generated for the 3D object. If user doesn't specify, just leave this as empty string."]
  SETTABLEKS R6 R5 K9 ["description"]
  NAMECALL R2 R2 K13 ["addArgument"]
  CALL R2 3 1
  LOADK R4 K14 ["attachedImageUri"]
  DUPTABLE R5 K10 [{"type", "description"}]
  LOADK R6 K11 ["string"]
  SETTABLEKS R6 R5 K8 ["type"]
  LOADK R6 K15 ["The image URI (IMAGEID_<id>) referencing the attached image from user input."]
  SETTABLEKS R6 R5 K9 ["description"]
  NAMECALL R2 R2 K16 ["addOptionalArgument"]
  CALL R2 3 1
  MOVE R4 R1
  NAMECALL R2 R2 K17 ["setHandler"]
  CALL R2 2 1
  NAMECALL R2 R2 K18 ["build"]
  CALL R2 1 1
  DUPTABLE R3 K21 [{"definition", "displayNameFunction"}]
  SETTABLEKS R2 R3 K19 ["definition"]
  DUPCLOSURE R4 K22 [PROTO_1]
  SETTABLEKS R4 R3 K20 ["displayNameFunction"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["ImageContentStore"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["ModelContextProtocol"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Tools"]
  GETTABLEKS R4 R5 K11 ["ToolTypes"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K6 ["Util"]
  GETTABLEKS R4 R5 K12 ["ToolBuilder"]
  GETTABLEKS R6 R2 K6 ["Util"]
  GETTABLEKS R5 R6 K13 ["ToolResult"]
  DUPCLOSURE R6 K14 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
