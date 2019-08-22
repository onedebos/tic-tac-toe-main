# frozen_string_literal: true

require_relative '../lib/player'

RSpec.describe Player do
  let(:name) { player.name }
  let(:symbol) { player.symbol }
  let(:player) { Player.new('Player 1', 'X') }

  it 'creates a player object' do
    expect(player.nil?).to eql(false)
  end

  it 'receives and sets a player name' do
    expect(player.name).to eql('Player 1')
  end

  it 'receives and sets a player name' do
    expect(player.name).not_to eql('X')
  end

  it 'receives and sets a symbol for the player' do
    expect(player.symbol).to eql('X')
  end
  
  it 'receives and sets a symbol for the player' do
    expect(player.symbol).not_to eql('Player 1')
  end
end
