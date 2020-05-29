# -*- coding: utf-8 -*- #
# frozen_string_literal: true

describe Rouge::Lexers::Sparrow do
  let(:subject) { Rouge::Lexers::Sparrow.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.ex'
      assert_guess :filename => 'foo.exs'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-sparrow'
      assert_guess :mimetype => 'application/x-sparrow'
    end
  end
end
