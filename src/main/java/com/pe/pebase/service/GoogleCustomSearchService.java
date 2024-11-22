package com.pe.pebase.service;

import java.io.IOException;
import java.util.List;

public interface GoogleCustomSearchService {

    List<String> googleSearchLink(String email) throws IOException;

}
