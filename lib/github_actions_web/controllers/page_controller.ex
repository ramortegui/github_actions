defmodule GithubActionsWeb.PageController do
  use GithubActionsWeb, :controller

  def index(conn, params) do

    render(conn, "index.html")

  end
end
