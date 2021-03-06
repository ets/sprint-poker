defimpl Poison.Encoder, for: SprintPoker.State do
  def encode(state, options) do
    %{
      name: state.name,
      currentTicketId: state.current_ticket_id,
      votes: state.votes
    } |> Poison.Encoder.encode(options)
  end
end
