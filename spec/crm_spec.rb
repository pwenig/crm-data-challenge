require 'crm_report'
require '/Users/paulwenig/gSchoolWork/crm-data-challenge/data/test_data.rb'

describe 'returns data structures' do

  it 'returns a list of companies and employees' do

    crm = CrmReport.new(CRM)

    actual = crm.company_employees

expected = [
  {:name => "Nicolas and Sons",
   :employees => []
  },
  {:name => "Mueller LLC",
   :employees => [
     {
       :id => 1,
       :first_name => "Whitney",
       :last_name => "Domenic",
       :title => "Regional Applications Designer"
     },
     {
       :id => 2,
       :first_name => "Savannah",
       :last_name => "Clementina",
       :title => "Chief Communications Consultant"
     }
   ]
  },
  {:name => "Mohr, King and Gleason",
   :employees => []
  },
  {:name => "Grimes Inc",
   :employees => [
     {
       :id => 1,
       :first_name => "Whitney",
       :last_name => "Domenic",
       :title => "Internal Mobility Executive"
     }
   ]
  }
]

    expect(actual).to eq expected

  end
end