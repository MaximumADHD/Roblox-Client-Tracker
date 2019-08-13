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
    float f0 = 1.0 / ((2.0 * CB1[1].z) * CB1[1].z);
    float f1 = float((2 * 0) + 1);
    float f2 = exp((((-1.0) - f1) * (f1 + 1.0)) * f0);
    float f3 = exp(((-f1) * f1) * f0) + f2;
    vec2 f4 = CB1[1].xy * (f1 + (f2 / f3));
    int f5 = 0 + 1;
    float f6 = float((2 * f5) + 1);
    float f7 = exp((((-1.0) - f6) * (f6 + 1.0)) * f0);
    float f8 = exp(((-f6) * f6) * f0) + f7;
    vec2 f9 = CB1[1].xy * (f6 + (f7 / f8));
    int f10 = f5 + 1;
    float f11 = float((2 * f10) + 1);
    float f12 = exp((((-1.0) - f11) * (f11 + 1.0)) * f0);
    float f13 = exp(((-f11) * f11) * f0) + f12;
    vec2 f14 = CB1[1].xy * (f11 + (f12 / f13));
    int f15 = f10 + 1;
    float f16 = float((2 * f15) + 1);
    float f17 = exp((((-1.0) - f16) * (f16 + 1.0)) * f0);
    float f18 = exp(((-f16) * f16) * f0) + f17;
    vec2 f19 = CB1[1].xy * (f16 + (f17 / f18));
    int f20 = f15 + 1;
    float f21 = float((2 * f20) + 1);
    float f22 = exp((((-1.0) - f21) * (f21 + 1.0)) * f0);
    float f23 = exp(((-f21) * f21) * f0) + f22;
    vec2 f24 = CB1[1].xy * (f21 + (f22 / f23));
    int f25 = f20 + 1;
    float f26 = float((2 * f25) + 1);
    float f27 = exp((((-1.0) - f26) * (f26 + 1.0)) * f0);
    float f28 = exp(((-f26) * f26) * f0) + f27;
    vec2 f29 = CB1[1].xy * (f26 + (f27 / f28));
    float f30 = float((2 * (f25 + 1)) + 1);
    float f31 = exp((((-1.0) - f30) * (f30 + 1.0)) * f0);
    float f32 = exp(((-f30) * f30) * f0) + f31;
    vec2 f33 = CB1[1].xy * (f30 + (f31 / f32));
    _entryPointOutput = (((((((texture(Texture0Texture, VARYING0) + ((texture(Texture0Texture, VARYING0 + f4) + texture(Texture0Texture, VARYING0 - f4)) * f3)) + ((texture(Texture0Texture, VARYING0 + f9) + texture(Texture0Texture, VARYING0 - f9)) * f8)) + ((texture(Texture0Texture, VARYING0 + f14) + texture(Texture0Texture, VARYING0 - f14)) * f13)) + ((texture(Texture0Texture, VARYING0 + f19) + texture(Texture0Texture, VARYING0 - f19)) * f18)) + ((texture(Texture0Texture, VARYING0 + f24) + texture(Texture0Texture, VARYING0 - f24)) * f23)) + ((texture(Texture0Texture, VARYING0 + f29) + texture(Texture0Texture, VARYING0 - f29)) * f28)) + ((texture(Texture0Texture, VARYING0 + f33) + texture(Texture0Texture, VARYING0 - f33)) * f32)) / vec4(((((((1.0 + (2.0 * f3)) + (2.0 * f8)) + (2.0 * f13)) + (2.0 * f18)) + (2.0 * f23)) + (2.0 * f28)) + (2.0 * f32));
}

//$$Texture0Texture=s0
