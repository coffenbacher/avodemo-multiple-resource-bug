class SimpleProjectResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  self.model_class = Project
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here
end
