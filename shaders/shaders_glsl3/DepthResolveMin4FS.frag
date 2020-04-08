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

void main()
{
    ivec2 f0 = ivec2(VARYING0 * CB1[0].xy);
    gl_FragDepth = min(min(texelFetch(DepthAATexture, f0, 0).x, texelFetch(DepthAATexture, f0, 1).x), min(texelFetch(DepthAATexture, f0, 2).x, texelFetch(DepthAATexture, f0, 3).x));
}

//$$DepthAATexture=s4
