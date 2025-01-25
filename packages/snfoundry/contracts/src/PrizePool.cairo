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