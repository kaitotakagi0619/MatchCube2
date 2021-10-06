#include "Basic.hlsli"

VSoutput main(float4 pos : POSITION, float3 normal : NORMAL, float2 uv : TEXCOORD)
{
	VSoutput output;
	//output.svpos = pos;
	output.svpos = mul(mat, pos);// À•W‚És—ñ‚ğæZ
	output.normal = normal;
	output.uv = uv;
	return output;
}