#version 150

uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    _entryPointOutput = vec4(f1 * f1, f0.w);
}

//$$Texture0Texture=s0
