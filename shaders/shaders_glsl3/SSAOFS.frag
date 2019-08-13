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
uniform sampler2D depthBufferTexture;
uniform sampler2D randMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = textureLod(depthBufferTexture, vec4(VARYING0, 0.0, 0.0).xy, 0.0);
    float f1 = f0.x;
    vec4 f2 = (texture(randMapTexture, fract((VARYING0 * CB1[0].xy) * vec2(0.25))) * 2.0) - vec4(1.0);
    float f3 = f2.y;
    vec2 f4 = clamp(CB1[1].xy * (0.0040000001899898052215576171875 / f1), CB1[0].zw * 10.0, CB1[0].zw * 100.0);
    float f5 = log2(0.100000001490116119384765625 * length(f4 * CB1[0].xy)) - 2.0;
    float f6;
    float f7;
    f7 = 2.0;
    f6 = 1.0;
    for (int f8 = 0; f8 < 8; )
    {
        float f9 = float(f8);
        float f10 = f9 + 1.0;
        float f11 = f10 * 0.100000001490116119384765625;
        float f12 = f9 * 0.78539812564849853515625;
        float f13 = f10 * 0.010000000707805156707763671875;
        vec2 f14 = ((vec2(cos(f12), sin(f12)) * f11) * mat2(vec2(f3, f2.x), vec2(-f2.x, f3))) * f4;
        vec2 f15 = vec2(0.0);
        f15.x = textureLod(depthBufferTexture, vec4(VARYING0 + f14, 0.0, f5).xy, f5).x;
        vec2 f16 = f15;
        f16.y = textureLod(depthBufferTexture, vec4(VARYING0 - f14, 0.0, f5).xy, f5).x;
        vec2 f17 = ((f16 - vec2(f1)) * (124.99999237060546875 / sqrt(1.0 - (f11 * f11)))) + vec2(0.5);
        float f18 = f17.x;
        float f19 = f17.y;
        float f20 = clamp(min(f18, f19) + 0.75, 0.0, 1.0);
        f7 += (2.0 * f20);
        f6 += ((clamp(f18 + f13, 0.0, 1.0) + clamp(f19 + f13, 0.0, 1.0)) * f20);
        f8++;
        continue;
    }
    _entryPointOutput = vec4((f1 > 0.9900000095367431640625) ? 1.0 : pow(clamp((f6 / f7) * 2.0, 0.0, 1.0), 1.0), f1, 0.0, 1.0);
}

//$$depthBufferTexture=s0
//$$randMapTexture=s1
