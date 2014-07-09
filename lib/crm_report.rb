class CrmReport

  def initialize(data)
    @data = data
  end

  def company_employees
    employees_of_companies = []
    @data[:companies].each do |company|
      employees_of_companies << {:name => company[:name], :employees => []}
       employees_of_companies
    end

    @data[:people].each do |person|
      person[:employments].each do |employment|
        listed_person = {
          :id => person[:id],
          :first_name => person[:first_name],
          :last_name => person[:last_name],
          :title => employment[:title]}
        employees_of_companies[employment[:company_id]][:employees] << listed_person
      end
    end
    p employees_of_companies
  end
end