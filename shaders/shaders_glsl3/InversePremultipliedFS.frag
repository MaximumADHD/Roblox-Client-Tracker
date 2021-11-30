#version 150

uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    float f1 = f0.w;
    _entryPointOutput = vec4(f0.xyz * ((f1 > 0.0) ? (1.0 / f1) : 1.0), f1);
}

//$$Texture0Texture=s0
