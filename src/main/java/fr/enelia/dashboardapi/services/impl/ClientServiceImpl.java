package fr.enelia.dashboardapi.services.impl;

import fr.enelia.dashboardapi.entities.Client;
import fr.enelia.dashboardapi.repositories.ClientRepository;
import fr.enelia.dashboardapi.services.ClientService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("clientService")
public class ClientServiceImpl implements ClientService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ClientServiceImpl.class);

    @Autowired
    private ClientRepository clientRepository;

    @Override
    public Client createClient(Client client) {
        LOGGER.info("createClient");
        client = clientRepository.save(client);
        return client;
    }

    @Override
    public Client updateClient(Client client) {
        LOGGER.info("updateClient");
        client = clientRepository.save(client);
        return client;
    }

    @Override
    public Client getClientById(Long id) {
        LOGGER.info("getClientById");
        return clientRepository.findOne(id);
    }

    @Override
    public Iterable<Client> getClients() {
        LOGGER.info("getClients");
        return clientRepository.findAll();
    }
}
