#version 150

uniform sampler2D EvsmTexture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = texture(EvsmTexture0Texture, VARYING0);
}

//$$EvsmTexture0Texture=s0
