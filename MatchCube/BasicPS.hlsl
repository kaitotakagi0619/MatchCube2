#include "Basic.hlsli"

Texture2D<float4> tex : register(t0);
SamplerState smp : register(s0);

float4 main(VSoutput input) : SV_TARGET
{
	float3 light = normalize(float3(1, -1, 1)); //右下奥    向きのライト
	float diffuse = saturate(dot(-light, input.normal)); //diffuseを[0, 1]の範囲にClampする
	//float brightness = diffuse + 0.0f; //光アンビエント項を0.3として計算
	float4 texcolor = float4(tex.Sample(smp, input.uv));
	return float4(texcolor.rgb, texcolor.a) * color;
}