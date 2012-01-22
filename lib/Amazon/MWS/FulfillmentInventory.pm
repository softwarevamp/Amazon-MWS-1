package Amazon::MWS::FulfillmentInventory;

use Amazon::MWS::Routines qw(:all);

my $fulfillment_service = '/FulfillmentInventory/2010-10-01/';

define_api_method ListInventorySupply =>
    raw_body => 1,
    service => "$fulfillment_service",
    parameters => {
        SellerSkus      => {
             type       => 'MemberList'
        },
        QueryStartDateTime      => { type => 'datetime' },
        ResponseGroup           => { type => 'List', values=>['Basic','Detailed'] }
    };

define_api_method ListInventorySupplyByNextToken =>
    raw_body => 1,
    service => "$fulfillment_service",
    parameters => {
        NextToken => {
            type     => 'string',
            required => 1,
        },
    };


1;
