#version 150

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
uniform sampler2D iChannel0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (CB1[0].zw * 0.5) * CB1[1].xy;
    vec4 f1 = texture(iChannel0Texture, VARYING0 + f0);
    vec4 f2 = texture(iChannel0Texture, VARYING0 - f0);
    _entryPointOutput = vec4((f1 + f2).xyz * 0.5, max(f1.w, f2.w));
}

//$$iChannel0Texture=s0
