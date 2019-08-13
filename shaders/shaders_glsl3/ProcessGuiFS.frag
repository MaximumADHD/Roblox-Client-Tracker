#version 150

uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _123 = texture(Texture0Texture, VARYING0);
    _entryPointOutput = vec4(clamp(_123.xyz * 2.0, vec3(0.0), vec3(1.0)), _123.w);
}

//$$Texture0Texture=s0
