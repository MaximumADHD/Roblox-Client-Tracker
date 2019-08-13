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
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0) * CB1[2];
    vec2 f1 = clamp(f0.xy, CB1[3].xy, CB1[3].zw);
    vec4 f2 = vec4(f1.x, f1.y, f0.z, f0.w);
    f2.z = clamp(f0.z, -CB1[3].z, -CB1[3].x);
    vec4 f3 = f2;
    f3.w = clamp(f0.w, CB1[3].y, CB1[3].w);
    _entryPointOutput = f3;
}

//$$Texture0Texture=s0
