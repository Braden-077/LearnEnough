# frozen_string_literal: true 

require 'title_case'

describe TitleCase do
  it 'capitalizes the title correctly' do
    expect( TitleCase.new("the great gatsby").make_title ).to eq("The Great Gatsby")
  end

  it 'can correct weird capitalization' do
    title = TitleCase.new('tHE sWORD iN tHE sTONE')
    expect(title.make_title).to eq('The Sword in the Stone')
  end

  it 'can work with all caps' do
    title = TitleCase.new('ROLEMODEL THE DOCUMENTARY')
    expect(title.make_title).to eq('Rolemodel the Documentary')
  end

  it 'can work with singular words' do
    title = TitleCase.new('bEOWULF')
    expect(title.make_title).to eq('Beowulf')
  end

  it 'will work with only a space' do
    title = TitleCase.new(' ')
    expect(title.make_title).to eq('')
  end

  it 'will work with long titles' do
    title = TitleCase.new('HARRY POTTER AND THE CHAMBER OF SECRETS') 
    expect(title.make_title).to eq('Harry Potter and the Chamber of Secrets')
  end
end