package fr.enelia.dashboardapi.controllers;

import fr.enelia.dashboardapi.entities.Client;
import fr.enelia.dashboardapi.services.ClientService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class ClientController {

    private static final Logger LOGGER = LoggerFactory.getLogger(ClientController.class);

    @Autowired
    ClientService clientService;

    @PostMapping(value = "client")
    public Client createClient(@RequestBody Client client) {
        LOGGER.info("createClient");
        client = clientService.createClient(client);
        return client;
    }

    @PutMapping("client")
    public Client updateClient(@RequestBody Client client) {
        LOGGER.info("updateClient");
        client = clientService.updateClient(client);
        return client;
    }

    @GetMapping(value = "client")
    public Client getClientById(@RequestParam Long id) {
        LOGGER.info("getClientById");
        return clientService.getClientById(id);
    }

    @GetMapping(value = "clients")
    public Iterable<Client> getClients() {
        LOGGER.info("getClients");
        return clientService.getClients();
    }
}
