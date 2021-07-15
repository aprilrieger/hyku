# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DomainName, type: :model do
  it "can provide a canonical cname" do
    d = DomainNmae.new(cname: 'ThisIsSomeFunkyCaps.com')
    expect(d.canonical_cname).to eq('thisissomefunkycaps.com')
  end
end
