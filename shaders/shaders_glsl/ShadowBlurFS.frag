#version 110

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
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    float f0 = float(-3);
    float f1 = exp(((-f0) * f0) * 0.22222222387790679931640625);
    vec4 f2 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * f0));
    int f3 = (-3) + 1;
    float f4 = float(f3);
    float f5 = exp(((-f4) * f4) * 0.22222222387790679931640625);
    vec4 f6 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * f4));
    int f7 = f3 + 1;
    float f8 = float(f7);
    float f9 = exp(((-f8) * f8) * 0.22222222387790679931640625);
    vec4 f10 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * f8));
    int f11 = f7 + 1;
    float f12 = float(f11);
    float f13 = exp(((-f12) * f12) * 0.22222222387790679931640625);
    vec4 f14 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * f12));
    int f15 = f11 + 1;
    float f16 = float(f15);
    float f17 = exp(((-f16) * f16) * 0.22222222387790679931640625);
    vec4 f18 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * f16));
    int f19 = f15 + 1;
    float f20 = float(f19);
    float f21 = exp(((-f20) * f20) * 0.22222222387790679931640625);
    vec4 f22 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * f20));
    float f23 = float(f19 + 1);
    float f24 = exp(((-f23) * f23) * 0.22222222387790679931640625);
    vec4 f25 = texture2D(Texture0Texture, VARYING0 + (CB1[1].xy * f23));
    gl_FragData[0] = vec4(min(min(min(min(min(min(min(1.0, f2.x), f6.x), f10.x), f14.x), f18.x), f22.x), f25.x), ((((((((0.0 + (f2.y * f1)) + (f6.y * f5)) + (f10.y * f9)) + (f14.y * f13)) + (f18.y * f17)) + (f22.y * f21)) + (f25.y * f24)) * texture2D(Texture1Texture, VARYING0).x) * (1.0 / (((((((0.0 + f1) + f5) + f9) + f13) + f17) + f21) + f24)), 0.0, 0.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
