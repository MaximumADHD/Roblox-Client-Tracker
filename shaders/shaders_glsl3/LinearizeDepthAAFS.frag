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
uniform sampler2DMS DepthAATexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float _182 = (2.0 * texelFetch(DepthAATexture, ivec2(VARYING0 * CB1[0].xy), 0).x) - 1.0;
    float _189 = CB1[1].y / (_182 + CB1[1].x);
    vec2 _192 = VARYING0 - vec2(0.5);
    _entryPointOutput = vec4((_182 <= (-1.0)) ? 1.0 : min(_189 * 0.00200000009499490261077880859375, 0.99800002574920654296875), clamp(1.0 - ((CB1[1].z - (sqrt((dot(_192, _192) * 4.0) + 1.0) * _189)) * CB1[1].w), 0.0, 1.0), 0.0, 0.0);
}

//$$DepthAATexture=s4
