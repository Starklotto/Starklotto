use starknet::ContractAddress;
use openzeppelin::token::erc20::ERC20Component;

#[starknet::interface]
trait IPrizePool<TContractState> {
    fn set_platform_fee(ref self: TContractState, percentage: u256);
    fn split_prize(ref self: TContractState, total_amount: u256) -> (u256, u256);
    fn withdraw_reserves(ref self: TContractState, amount: u256, recipient: ContractAddress);
    fn get_platform_fee(ref self: TContractState) -> u256;
    fn get_platform_reserves(ref self: TContractState) -> u256;
}
#[starknet::contract]
mod PrizePool {


    fn u256_wide_mul_div(value: u256, numerator: u256, denominator: u256) -> (u256, u256) {
        let (high, low) = value.widening_mul(numerator);
        let full_value = u512_from_u256s(high, low);
        let result = full_value / denominator.into();
        let remainder = full_value % denominator.into();
        (result.into(), remainder.into())
    }

    #[abi(embed_v0)]
    impl ERC20Impl = ERC20Component::ERC20Impl<ContractState>;
    #[abi(embed_v0)]
    impl ERC20CamelImpl = ERC20Component::ERC20CamelImpl<ContractState>;
}