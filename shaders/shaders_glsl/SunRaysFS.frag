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
uniform sampler2D Texture1Texture;
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec2 _397 = CB1[1].xy - VARYING1.xy;
    vec2 _403 = (sign(_397) - VARYING1.xy) / _397;
    float _405 = _403.x;
    float _412 = _403.y;
    vec2 _322 = (((VARYING1.xy - CB1[1].xy) * 0.5) * min(min((_405 < 0.0) ? 1.0 : _405, (_412 < 0.0) ? 1.0 : _412), 1.0)) * 0.083333335816860198974609375;
    vec2 _349 = (VARYING0 + (_322 * texture2D(Texture1Texture, (VARYING0 * CB1[0].xy) * vec2(0.125)).x)) - _322;
    vec2 _489 = _349 - _322;
    vec2 _503 = _489 - _322;
    vec2 _517 = _503 - _322;
    vec2 _531 = _517 - _322;
    vec2 _545 = _531 - _322;
    vec2 _559 = _545 - _322;
    vec2 _573 = _559 - _322;
    vec2 _587 = _573 - _322;
    vec2 _601 = _587 - _322;
    vec2 _615 = _601 - _322;
    gl_FragData[0] = vec4(CB1[3].xyz * ((((((((((((((0.0 + float(texture2D(Texture0Texture, _349).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _489).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _503).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _517).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _531).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _545).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _559).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _573).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _587).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _601).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _615).x >= 0.999000012874603271484375)) + float(texture2D(Texture0Texture, _615 - _322).x >= 0.999000012874603271484375)) * CB1[2].x) * ((1.0 - CB1[2].z) * pow(clamp((1.0 + CB1[2].z) - ((2.0 * CB1[2].y) * dot(normalize(vec3((VARYING1.xy * CB1[4].xy) + CB1[4].zw, -1.0)), vec3(CB1[1].zw, CB1[2].w))), 0.0, 1.0), -1.5))), 1.0);
}

//$$Texture1Texture=s1
//$$Texture0Texture=s0
