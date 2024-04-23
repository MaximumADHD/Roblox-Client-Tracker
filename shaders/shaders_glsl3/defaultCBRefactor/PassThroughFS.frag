#version 150

uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = texture(Texture0Texture, VARYING0);
}

//$$Texture0Texture=s0
