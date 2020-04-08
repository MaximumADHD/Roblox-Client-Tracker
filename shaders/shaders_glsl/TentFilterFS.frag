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

varying vec2 VARYING0;

void main()
{
    vec4 f0 = CB1[0].zwzw * vec4(-0.5, -0.5, 0.5, 0.5);
    gl_FragData[0] = (((texture2D(Texture0Texture, VARYING0 + f0.xy) + texture2D(Texture0Texture, VARYING0 + f0.zy)) + texture2D(Texture0Texture, VARYING0 + f0.xw)) + texture2D(Texture0Texture, VARYING0 + f0.zw)) * 0.25;
}

//$$Texture0Texture=s0
