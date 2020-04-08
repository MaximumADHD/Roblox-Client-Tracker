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
uniform sampler2D iChannel1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = CB1[0].zwzw * vec4(-1.0, -1.0, 1.0, 1.0);
    vec2 f1 = VARYING0 + f0.xy;
    vec2 f2 = VARYING0 + f0.zy;
    vec2 f3 = VARYING0 + f0.xw;
    vec2 f4 = VARYING0 + f0.zw;
    vec4 f5[4] = vec4[](texture(iChannel0Texture, f1), texture(iChannel0Texture, f2), texture(iChannel0Texture, f3), texture(iChannel0Texture, f4));
    vec4 f6 = texture(iChannel0Texture, VARYING0);
    float f7[4] = float[](texture(iChannel1Texture, f1).x, texture(iChannel0Texture, f2).x, texture(iChannel1Texture, f3).x, texture(iChannel1Texture, f4).x);
    vec3 f8;
    float f9;
    f9 = 1.0;
    f8 = f6.xyz;
    vec3 f10;
    float f11;
    for (int f12 = 0; f12 < 4; f9 = f11, f8 = f10, f12++)
    {
        if (f7[f12] <= (texture(iChannel1Texture, VARYING0).x * 1.0499999523162841796875))
        {
            f11 = f9 + 1.0;
            f10 = f8 + f5[f12].xyz;
        }
        else
        {
            f11 = f9;
            f10 = f8;
        }
    }
    _entryPointOutput = vec4(f8 / vec3(f9), f6.w);
}

//$$iChannel0Texture=s0
//$$iChannel1Texture=s1
