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
    float f0 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float f1 = (2.0 * (((CB1[2].y / (f0 - CB1[2].x)) * CB1[2].z) + (f0 * CB1[2].w))) - 1.0;
    float f2 = exp(CB1[1].z * f1);
    float f3 = -CB1[1].w;
    float f4 = -exp(f3 * f1);
    float f5 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(-1.0, 0.0)) + VARYING0).x) - 1.0;
    float f6 = (2.0 * (((CB1[2].y / (f5 - CB1[2].x)) * CB1[2].z) + (f5 * CB1[2].w))) - 1.0;
    float f7 = exp(CB1[1].z * f6);
    float f8 = -exp(f3 * f6);
    float f9 = (2.0 * texture(Texture0Texture, (CB1[1].xy * vec2(1.0, 0.0)) + VARYING0).x) - 1.0;
    float f10 = (2.0 * (((CB1[2].y / (f9 - CB1[2].x)) * CB1[2].z) + (f9 * CB1[2].w))) - 1.0;
    float f11 = exp(CB1[1].z * f10);
    float f12 = -exp(f3 * f10);
    _entryPointOutput = ((vec4(f2, f2 * f2, f4, f4 * f4) * CB1[3].x) + (vec4(f7, f7 * f7, f8, f8 * f8) * CB1[3].y)) + (vec4(f11, f11 * f11, f12, f12 * f12) * CB1[3].y);
}

//$$Texture0Texture=s0
