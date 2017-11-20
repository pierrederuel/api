package fr.enelia.dashboardapi.services;

import fr.enelia.dashboardapi.entities.Client;
import org.springframework.stereotype.Service;

@Service
public interface ClientService {

    public Client createClient(Client client);
    public Client updateClient(Client client);
    public Client getClientById(Long id);
    public Iterable<Client> getClients();
}
