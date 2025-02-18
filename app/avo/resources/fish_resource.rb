class FishResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.description = 'Demo resource to illustrate Avo\'s support for uncountable models (the model represented here is Fish)'
  self.search_query = -> do
    scope.ransack(id_eq: params[:q], name_cont: params[:q], m: "or").result(distinct: false)
  end
  self.extra_params = [:fish_type, :something_else, properties: [], information: [:name, :history]]

  field :id, as: :id
  field :name, as: :text
  field :type, as: :text, hide_on: :forms
  tool FishInformation, show_on: :forms

  tabs style: :big_pills do
    tab "big useless tab here" do
      panel do
        field :id, as: :id
      end
    end

    tab "big useless tab here 2" do
      panel do
        field :id, as: :id
      end
    end

    tab "big useless tab here 3" do
      panel do
        field :id, as: :id
      end
    end

    tab "big useless tab here 4" do
      panel do
        field :id, as: :id
      end
    end

    tab "big useless tab here 5" do
      panel do
        field :id, as: :id
      end
    end

    tab "big useless tab here 6" do
      panel do
        field :id, as: :id
      end
    end

    tab "big useless tab here 7" do
      panel do
        field :id, as: :id
      end
    end

    tab "big useless tab here 8" do
      panel do
        field :id, as: :id
      end
    end
  end

  action ReleaseFish
  action DummyAction
end
